.class public final enum Lhaq;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lhaq;

.field public static final enum b:Lhaq;

.field public static final enum c:Lhaq;

.field public static final enum d:Lhaq;

.field private static final synthetic e:[Lhaq;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lhaq;

    const-string v1, "SHUTTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lhaq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhaq;->a:Lhaq;

    new-instance v1, Lhaq;

    const-string v3, "ZOOM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lhaq;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lhaq;->b:Lhaq;

    new-instance v3, Lhaq;

    const-string v5, "VOLUME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lhaq;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lhaq;->c:Lhaq;

    new-instance v5, Lhaq;

    const-string v7, "OFF"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lhaq;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lhaq;->d:Lhaq;

    const/4 v7, 0x4

    new-array v7, v7, [Lhaq;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lhaq;->e:[Lhaq;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lhaq;
    .locals 1

    sget-object v0, Lhaq;->e:[Lhaq;

    invoke-virtual {v0}, [Lhaq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhaq;

    return-object v0
.end method
