.class public final enum Lixo;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lixo;

.field public static final enum b:Lixo;

.field private static final synthetic d:[Lixo;


# instance fields
.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lixo;

    const-string v1, "CLOCKWISE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lixo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lixo;->a:Lixo;

    new-instance v1, Lixo;

    const-string v3, "COUNTER_CLOCKWISE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lixo;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lixo;->b:Lixo;

    const/4 v3, 0x2

    new-array v3, v3, [Lixo;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lixo;->d:[Lixo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lixo;->c:I

    return-void
.end method

.method public static values()[Lixo;
    .locals 1

    sget-object v0, Lixo;->d:[Lixo;

    invoke-virtual {v0}, [Lixo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lixo;

    return-object v0
.end method
