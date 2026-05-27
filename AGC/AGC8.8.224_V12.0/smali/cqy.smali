.class final enum Lcqy;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcqy;

.field public static final enum b:Lcqy;

.field public static final enum c:Lcqy;

.field public static final enum d:Lcqy;

.field private static final synthetic e:[Lcqy;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcqy;

    const-string v1, "UNINITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcqy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcqy;->a:Lcqy;

    new-instance v1, Lcqy;

    const-string v3, "INITIALIZED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcqy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcqy;->b:Lcqy;

    new-instance v3, Lcqy;

    const-string v5, "STARTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcqy;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcqy;->c:Lcqy;

    new-instance v5, Lcqy;

    const-string v7, "STOPPED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcqy;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcqy;->d:Lcqy;

    const/4 v7, 0x4

    new-array v7, v7, [Lcqy;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcqy;->e:[Lcqy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcqy;
    .locals 1

    sget-object v0, Lcqy;->e:[Lcqy;

    invoke-virtual {v0}, [Lcqy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcqy;

    return-object v0
.end method
