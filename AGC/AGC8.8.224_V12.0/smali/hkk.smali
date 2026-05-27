.class public final enum Lhkk;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lhkk;

.field public static final enum b:Lhkk;

.field public static final enum c:Lhkk;

.field public static final enum d:Lhkk;

.field private static final synthetic e:[Lhkk;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lhkk;

    const-string v1, "RECORD_STARTING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lhkk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhkk;->a:Lhkk;

    new-instance v1, Lhkk;

    const-string v3, "RECORD_STARTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lhkk;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lhkk;->b:Lhkk;

    new-instance v3, Lhkk;

    const-string v5, "RECORD_STOPPING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lhkk;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lhkk;->c:Lhkk;

    new-instance v5, Lhkk;

    const-string v7, "RECORD_STOPPED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lhkk;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lhkk;->d:Lhkk;

    const/4 v7, 0x4

    new-array v7, v7, [Lhkk;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lhkk;->e:[Lhkk;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lhkk;
    .locals 1

    sget-object v0, Lhkk;->e:[Lhkk;

    invoke-virtual {v0}, [Lhkk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhkk;

    return-object v0
.end method
