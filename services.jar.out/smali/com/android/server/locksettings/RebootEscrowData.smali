.class Lcom/android/server/locksettings/RebootEscrowData;
.super Ljava/lang/Object;
.source "RebootEscrowData.java"


# static fields
.field private static final CIPHER_ALGO:Ljava/lang/String; = "AES/GCM/NoPadding"

.field private static final CURRENT_VERSION:I = 0x1


# instance fields
.field private final mBlob:[B

.field private final mIv:[B

.field private final mKey:Lcom/android/server/locksettings/RebootEscrowKey;

.field private final mSpVersion:B

.field private final mSyntheticPassword:[B


# direct methods
.method private constructor <init>(B[B[B[BLcom/android/server/locksettings/RebootEscrowKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/locksettings/RebootEscrowData;->mSpVersion:B

    iput-object p2, p0, Lcom/android/server/locksettings/RebootEscrowData;->mIv:[B

    iput-object p3, p0, Lcom/android/server/locksettings/RebootEscrowData;->mSyntheticPassword:[B

    iput-object p4, p0, Lcom/android/server/locksettings/RebootEscrowData;->mBlob:[B

    iput-object p5, p0, Lcom/android/server/locksettings/RebootEscrowData;->mKey:Lcom/android/server/locksettings/RebootEscrowKey;

    return-void
.end method

.method static fromEncryptedData(Lcom/android/server/locksettings/RebootEscrowKey;[B)Lcom/android/server/locksettings/RebootEscrowData;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    if-ltz v9, :cond_1

    const/16 v3, 0x20

    if-gt v9, v3, :cond_1

    new-array v10, v9, [B

    invoke-virtual {v0, v10}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    if-ltz v11, :cond_0

    new-array v12, v11, [B

    invoke-virtual {v0, v12}, Ljava/io/DataInputStream;->readFully([B)V

    :try_start_0
    const-string v3, "AES/GCM/NoPadding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowKey;->getKey()Ljavax/crypto/SecretKey;

    move-result-object v5

    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v6, v10}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v3, v4, v5, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v3, v12}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    new-instance v13, Lcom/android/server/locksettings/RebootEscrowData;

    move-object v3, v13

    move v4, v2

    move-object v5, v10

    move-object v7, p1

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/locksettings/RebootEscrowData;-><init>(B[B[B[BLcom/android/server/locksettings/RebootEscrowKey;)V

    return-object v13

    :catch_0
    move-exception v3

    new-instance v4, Ljava/io/IOException;

    const-string v5, "Could not decrypt ciphertext"

    invoke-direct {v4, v5, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid cipher text size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IV out of range: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static fromSyntheticPassword(Lcom/android/server/locksettings/RebootEscrowKey;B[B)Lcom/android/server/locksettings/RebootEscrowData;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    const-string v2, "AES/GCM/NoPadding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowKey;->getKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v2, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v5
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v5

    nop

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    array-length v4, v2

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    array-length v4, v3

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write([B)V

    new-instance v4, Lcom/android/server/locksettings/RebootEscrowData;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    move-object v6, v4

    move v7, p1

    move-object v8, v2

    move-object v9, p2

    move-object v11, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/server/locksettings/RebootEscrowData;-><init>(B[B[B[BLcom/android/server/locksettings/RebootEscrowKey;)V

    return-object v4

    :catch_0
    move-exception v2

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Could not encrypt reboot escrow data"

    invoke-direct {v3, v4, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public getBlob()[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowData;->mBlob:[B

    return-object v0
.end method

.method public getIv()[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowData;->mIv:[B

    return-object v0
.end method

.method public getKey()Lcom/android/server/locksettings/RebootEscrowKey;
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowData;->mKey:Lcom/android/server/locksettings/RebootEscrowKey;

    return-object v0
.end method

.method public getSpVersion()B
    .locals 1

    iget-byte v0, p0, Lcom/android/server/locksettings/RebootEscrowData;->mSpVersion:B

    return v0
.end method

.method public getSyntheticPassword()[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowData;->mSyntheticPassword:[B

    return-object v0
.end method
