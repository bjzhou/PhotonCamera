.class public final enum Litj;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Litj;

.field public static final enum b:Litj;

.field public static final enum c:Litj;

.field public static final enum d:Litj;

.field private static final synthetic e:[Litj;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Litj;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Litj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Litj;->a:Litj;

    new-instance v1, Litj;

    const-string v3, "MAIN_ONLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Litj;-><init>(Ljava/lang/String;I)V

    sput-object v1, Litj;->b:Litj;

    new-instance v3, Litj;

    const-string v5, "FRONT_PORTRAIT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Litj;-><init>(Ljava/lang/String;I)V

    sput-object v3, Litj;->c:Litj;

    new-instance v5, Litj;

    const-string v7, "ALL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Litj;-><init>(Ljava/lang/String;I)V

    sput-object v5, Litj;->d:Litj;

    const/4 v7, 0x4

    new-array v7, v7, [Litj;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Litj;->e:[Litj;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Litj;
    .locals 1

    sget-object v0, Litj;->e:[Litj;

    invoke-virtual {v0}, [Litj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Litj;

    return-object v0
.end method
