.class Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;
.super Ljava/lang/Object;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/people/data/DataManager$ContactsContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConversationSelector"
.end annotation


# instance fields
.field private mConversationInfo:Lcom/android/server/people/data/ConversationInfo;

.field private mConversationStore:Lcom/android/server/people/data/ConversationStore;

.field final synthetic this$1:Lcom/android/server/people/data/DataManager$ContactsContentObserver;


# direct methods
.method private constructor <init>(Lcom/android/server/people/data/DataManager$ContactsContentObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->this$1:Lcom/android/server/people/data/DataManager$ContactsContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mConversationInfo:Lcom/android/server/people/data/ConversationInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/people/data/DataManager$ContactsContentObserver;Lcom/android/server/people/data/DataManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;-><init>(Lcom/android/server/people/data/DataManager$ContactsContentObserver;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;)Lcom/android/server/people/data/ConversationInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mConversationInfo:Lcom/android/server/people/data/ConversationInfo;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;Lcom/android/server/people/data/ConversationInfo;)Lcom/android/server/people/data/ConversationInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mConversationInfo:Lcom/android/server/people/data/ConversationInfo;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;)Lcom/android/server/people/data/ConversationStore;
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;Lcom/android/server/people/data/ConversationStore;)Lcom/android/server/people/data/ConversationStore;
    .locals 0

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    return-object p1
.end method
