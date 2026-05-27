.class public final enum Lnbe;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lnbe;

.field public static final enum b:Lnbe;

.field public static final enum c:Lnbe;

.field public static final enum d:Lnbe;

.field public static final enum e:Lnbe;

.field private static final synthetic g:[Lnbe;


# instance fields
.field public final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lnbe;

    const/16 v1, 0xa

    const-string v2, "SMALL"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lnbe;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnbe;->a:Lnbe;

    new-instance v1, Lnbe;

    const-string v2, "MEDIUM"

    const/4 v4, 0x1

    const/16 v5, 0x14

    invoke-direct {v1, v2, v4, v5}, Lnbe;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnbe;->b:Lnbe;

    new-instance v2, Lnbe;

    const-string v5, "LARGE"

    const/4 v6, 0x2

    const/16 v7, 0x32

    invoke-direct {v2, v5, v6, v7}, Lnbe;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lnbe;->c:Lnbe;

    new-instance v5, Lnbe;

    const-string v7, "FULL"

    const/4 v8, 0x3

    const/4 v9, -0x1

    invoke-direct {v5, v7, v8, v9}, Lnbe;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lnbe;->d:Lnbe;

    new-instance v7, Lnbe;

    const-string v9, "NONE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v3}, Lnbe;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lnbe;->e:Lnbe;

    const/4 v9, 0x5

    new-array v9, v9, [Lnbe;

    aput-object v0, v9, v3

    aput-object v1, v9, v4

    aput-object v2, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lnbe;->g:[Lnbe;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lnbe;->f:I

    return-void
.end method

.method public static values()[Lnbe;
    .locals 1

    sget-object v0, Lnbe;->g:[Lnbe;

    invoke-virtual {v0}, [Lnbe;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnbe;

    return-object v0
.end method
