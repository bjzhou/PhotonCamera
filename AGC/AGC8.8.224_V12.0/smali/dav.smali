.class public final enum Ldav;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Ldav;

.field public static final enum b:Ldav;

.field public static final enum c:Ldav;

.field public static final enum d:Ldav;

.field private static final synthetic e:[Ldav;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Ldav;

    const-string v1, "STANDARD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldav;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldav;->a:Ldav;

    new-instance v1, Ldav;

    const-string v3, "LOCKED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ldav;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ldav;->b:Ldav;

    new-instance v3, Ldav;

    const-string v5, "ACTIVE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ldav;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ldav;->c:Ldav;

    new-instance v5, Ldav;

    const-string v7, "CINEMATIC"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ldav;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ldav;->d:Ldav;

    const/4 v7, 0x4

    new-array v7, v7, [Ldav;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Ldav;->e:[Ldav;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Ldav;
    .locals 1

    sget-object v0, Ldav;->e:[Ldav;

    invoke-virtual {v0}, [Ldav;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldav;

    return-object v0
.end method
