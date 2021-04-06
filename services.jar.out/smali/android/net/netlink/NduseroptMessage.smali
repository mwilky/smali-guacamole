.class public Landroid/net/netlink/NduseroptMessage;
.super Landroid/net/netlink/NetlinkMessage;
.source "NduseroptMessage.java"


# static fields
.field static final NDUSEROPT_SRCADDR:I = 0x1

.field public static final STRUCT_SIZE:I = 0x10


# instance fields
.field public final family:B

.field public final icmp_code:B

.field public final icmp_type:B

.field public final ifindex:I

.field public final option:Landroid/net/netlink/NdOption;

.field public final opts_len:I

.field public final srcaddr:Ljava/net/InetAddress;


# direct methods
.method constructor <init>(Landroid/net/netlink/StructNlMsgHdr;Ljava/nio/ByteBuffer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/net/netlink/NetlinkMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;)V

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Landroid/net/netlink/NduseroptMessage;->family:B

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v1

    iput v1, p0, Landroid/net/netlink/NduseroptMessage;->opts_len:I

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Landroid/net/netlink/NduseroptMessage;->ifindex:I

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Landroid/net/netlink/NduseroptMessage;->icmp_type:B

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Landroid/net/netlink/NduseroptMessage;->icmp_code:B

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/lit8 v2, v0, 0x10

    iget v3, p0, Landroid/net/netlink/NduseroptMessage;->opts_len:I

    add-int/2addr v2, v3

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :try_start_0
    invoke-static {p2}, Landroid/net/netlink/NdOption;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/NdOption;

    move-result-object v2

    iput-object v2, p0, Landroid/net/netlink/NduseroptMessage;->option:Landroid/net/netlink/NdOption;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    nop

    add-int/lit8 v2, v0, 0x10

    iget v3, p0, Landroid/net/netlink/NduseroptMessage;->opts_len:I

    add-int/2addr v2, v3

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {p2}, Landroid/net/netlink/StructNlAttr;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-short v4, v3, Landroid/net/netlink/StructNlAttr;->nla_type:S

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    iget-object v4, v3, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    if-eqz v4, :cond_1

    iget-byte v4, p0, Landroid/net/netlink/NduseroptMessage;->family:B

    sget v5, Landroid/system/OsConstants;->AF_INET6:I

    if-ne v4, v5, :cond_0

    const/4 v4, 0x0

    iget-object v5, v3, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    iget v6, p0, Landroid/net/netlink/NduseroptMessage;->ifindex:I

    invoke-static {v4, v5, v6}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object v4

    iput-object v4, p0, Landroid/net/netlink/NduseroptMessage;->srcaddr:Ljava/net/InetAddress;

    goto :goto_0

    :cond_0
    iget-object v4, v3, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    invoke-static {v4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v4

    iput-object v4, p0, Landroid/net/netlink/NduseroptMessage;->srcaddr:Ljava/net/InetAddress;

    :goto_0
    return-void

    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid source address in ND useropt"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "ND options extend past end of buffer"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_0
    move-exception v2

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw v2
.end method

.method public static parse(Landroid/net/netlink/StructNlMsgHdr;Ljava/nio/ByteBuffer;)Landroid/net/netlink/NduseroptMessage;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    :try_start_0
    new-instance v2, Landroid/net/netlink/NduseroptMessage;

    invoke-direct {v2, p0, p1}, Landroid/net/netlink/NduseroptMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object v2

    :catchall_0
    move-exception v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    throw v0

    :catch_0
    move-exception v2

    nop

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object v0

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-byte v1, p0, Landroid/net/netlink/NduseroptMessage;->family:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/netlink/NduseroptMessage;->opts_len:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/netlink/NduseroptMessage;->ifindex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroid/net/netlink/NduseroptMessage;->icmp_type:B

    invoke-static {v1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroid/net/netlink/NduseroptMessage;->icmp_code:B

    invoke-static {v1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/netlink/NduseroptMessage;->srcaddr:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "Nduseroptmsg(%d, %d, %d, %d, %d, %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
