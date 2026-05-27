.class public final enum Likn;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Likn;

.field public static final enum b:Likn;

.field public static final enum c:Likn;

.field public static final enum d:Likn;

.field public static final enum e:Likn;

.field public static final enum f:Likn;

.field private static final synthetic g:[Likn;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Likn;

    const-string v1, "PLACEHOLDER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Likn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Likn;->a:Likn;

    new-instance v1, Likn;

    const-string v3, "MARS_PLACEHOLDER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Likn;-><init>(Ljava/lang/String;I)V

    sput-object v1, Likn;->b:Likn;

    new-instance v3, Likn;

    const-string v5, "PHOTO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Likn;-><init>(Ljava/lang/String;I)V

    sput-object v3, Likn;->c:Likn;

    new-instance v5, Likn;

    const-string v7, "BURST"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Likn;-><init>(Ljava/lang/String;I)V

    sput-object v5, Likn;->d:Likn;

    new-instance v7, Likn;

    const-string v9, "VIDEO"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Likn;-><init>(Ljava/lang/String;I)V

    sput-object v7, Likn;->e:Likn;

    new-instance v9, Likn;

    const-string v11, "SECURE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Likn;-><init>(Ljava/lang/String;I)V

    sput-object v9, Likn;->f:Likn;

    const/4 v11, 0x6

    new-array v11, v11, [Likn;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Likn;->g:[Likn;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Likn;
    .locals 1

    sget-object v0, Likn;->g:[Likn;

    invoke-virtual {v0}, [Likn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Likn;

    return-object v0
.end method
