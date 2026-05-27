.class public final enum Livt;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Livt;

.field public static final enum b:Livt;

.field public static final enum c:Livt;

.field public static final enum d:Livt;

.field private static final synthetic g:[Livt;


# instance fields
.field public final e:I

.field public final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Livt;

    const v1, 0x7f070744

    const v2, 0x7f070748

    const-string v3, "XSMALL"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Livt;-><init>(Ljava/lang/String;III)V

    sput-object v0, Livt;->a:Livt;

    new-instance v1, Livt;

    const-string v2, "SMALL"

    const/4 v3, 0x1

    const v5, 0x7f070742

    const v6, 0x7f070746

    invoke-direct {v1, v2, v3, v5, v6}, Livt;-><init>(Ljava/lang/String;III)V

    sput-object v1, Livt;->b:Livt;

    new-instance v2, Livt;

    const-string v5, "STANDARD"

    const/4 v6, 0x2

    const v7, 0x7f070743

    const v8, 0x7f070747

    invoke-direct {v2, v5, v6, v7, v8}, Livt;-><init>(Ljava/lang/String;III)V

    sput-object v2, Livt;->c:Livt;

    new-instance v5, Livt;

    const-string v7, "LARGE"

    const/4 v8, 0x3

    const v9, 0x7f070741

    const v10, 0x7f070745

    invoke-direct {v5, v7, v8, v9, v10}, Livt;-><init>(Ljava/lang/String;III)V

    sput-object v5, Livt;->d:Livt;

    const/4 v7, 0x4

    new-array v7, v7, [Livt;

    aput-object v0, v7, v4

    aput-object v1, v7, v3

    aput-object v2, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Livt;->g:[Livt;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Livt;->e:I

    iput p4, p0, Livt;->f:I

    return-void
.end method

.method public static values()[Livt;
    .locals 1

    sget-object v0, Livt;->g:[Livt;

    invoke-virtual {v0}, [Livt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Livt;

    return-object v0
.end method
