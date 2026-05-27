.class public final enum Lhyh;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lhyh;

.field public static final enum b:Lhyh;

.field public static final enum c:Lhyh;

.field private static final synthetic d:[Lhyh;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lhyh;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lhyh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhyh;->a:Lhyh;

    new-instance v1, Lhyh;

    const-string v3, "TO_LEFT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lhyh;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lhyh;->b:Lhyh;

    new-instance v3, Lhyh;

    const-string v5, "TO_RIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lhyh;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lhyh;->c:Lhyh;

    const/4 v5, 0x3

    new-array v5, v5, [Lhyh;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lhyh;->d:[Lhyh;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lhyh;
    .locals 1

    sget-object v0, Lhyh;->d:[Lhyh;

    invoke-virtual {v0}, [Lhyh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhyh;

    return-object v0
.end method
