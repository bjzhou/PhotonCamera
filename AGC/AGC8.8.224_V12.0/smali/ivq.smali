.class public final enum Livq;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Livq;

.field public static final enum b:Livq;

.field public static final enum c:Livq;

.field public static final enum d:Livq;

.field public static final enum e:Livq;

.field private static final synthetic g:[Livq;


# instance fields
.field public final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Livq;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Livq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Livq;->a:Livq;

    new-instance v1, Livq;

    const-string v3, "CHECKBOX"

    const/4 v4, 0x1

    const v5, 0x7f0e011e

    invoke-direct {v1, v3, v4, v5}, Livq;-><init>(Ljava/lang/String;II)V

    sput-object v1, Livq;->b:Livq;

    new-instance v3, Livq;

    const-string v5, "RADIO"

    const/4 v6, 0x2

    const v7, 0x7f0e0120

    invoke-direct {v3, v5, v6, v7}, Livq;-><init>(Ljava/lang/String;II)V

    sput-object v3, Livq;->c:Livq;

    new-instance v5, Livq;

    const-string v7, "SWITCH"

    const/4 v8, 0x3

    const v9, 0x7f0e0121

    invoke-direct {v5, v7, v8, v9}, Livq;-><init>(Ljava/lang/String;II)V

    sput-object v5, Livq;->d:Livq;

    new-instance v7, Livq;

    const-string v9, "ICON"

    const/4 v10, 0x4

    const v11, 0x7f0e011f

    invoke-direct {v7, v9, v10, v11}, Livq;-><init>(Ljava/lang/String;II)V

    sput-object v7, Livq;->e:Livq;

    const/4 v9, 0x5

    new-array v9, v9, [Livq;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Livq;->g:[Livq;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Livq;->f:I

    return-void
.end method

.method public static values()[Livq;
    .locals 1

    sget-object v0, Livq;->g:[Livq;

    invoke-virtual {v0}, [Livq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Livq;

    return-object v0
.end method
