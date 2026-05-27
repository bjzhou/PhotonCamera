.class final enum Lcva;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcva;

.field public static final enum b:Lcva;

.field public static final enum c:Lcva;

.field public static final enum d:Lcva;

.field private static final synthetic e:[Lcva;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcva;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcva;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcva;->a:Lcva;

    new-instance v1, Lcva;

    const-string v3, "STARTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcva;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcva;->b:Lcva;

    new-instance v3, Lcva;

    const-string v5, "STOPPED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcva;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcva;->c:Lcva;

    new-instance v5, Lcva;

    const-string v7, "CLOSED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcva;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcva;->d:Lcva;

    const/4 v7, 0x4

    new-array v7, v7, [Lcva;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcva;->e:[Lcva;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcva;
    .locals 1

    sget-object v0, Lcva;->e:[Lcva;

    invoke-virtual {v0}, [Lcva;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcva;

    return-object v0
.end method
