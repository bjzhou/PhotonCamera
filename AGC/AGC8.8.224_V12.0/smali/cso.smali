.class final enum Lcso;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcso;

.field public static final enum b:Lcso;

.field public static final enum c:Lcso;

.field public static final enum d:Lcso;

.field private static final synthetic e:[Lcso;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcso;

    const-string v1, "UNINITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcso;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcso;->a:Lcso;

    new-instance v1, Lcso;

    const-string v3, "INITIALIZED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcso;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcso;->b:Lcso;

    new-instance v3, Lcso;

    const-string v5, "STARTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcso;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcso;->c:Lcso;

    new-instance v5, Lcso;

    const-string v7, "STOPPED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcso;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcso;->d:Lcso;

    const/4 v7, 0x4

    new-array v7, v7, [Lcso;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcso;->e:[Lcso;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcso;
    .locals 1

    sget-object v0, Lcso;->e:[Lcso;

    invoke-virtual {v0}, [Lcso;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcso;

    return-object v0
.end method
