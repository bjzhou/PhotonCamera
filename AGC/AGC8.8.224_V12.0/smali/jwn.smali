.class public final enum Ljwn;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Ljwn;

.field public static final enum b:Ljwn;

.field public static final enum c:Ljwn;

.field public static final enum d:Ljwn;

.field private static final synthetic e:[Ljwn;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Ljwn;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljwn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljwn;->a:Ljwn;

    new-instance v1, Ljwn;

    const-string v3, "STARTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljwn;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljwn;->b:Ljwn;

    new-instance v3, Ljwn;

    const-string v5, "PAUSED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljwn;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ljwn;->c:Ljwn;

    new-instance v5, Ljwn;

    const-string v7, "STOPPED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljwn;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ljwn;->d:Ljwn;

    const/4 v7, 0x4

    new-array v7, v7, [Ljwn;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Ljwn;->e:[Ljwn;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Ljwn;
    .locals 1

    sget-object v0, Ljwn;->e:[Ljwn;

    invoke-virtual {v0}, [Ljwn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljwn;

    return-object v0
.end method
