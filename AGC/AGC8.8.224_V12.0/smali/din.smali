.class public final enum Ldin;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Ldin;

.field public static final enum b:Ldin;

.field public static final enum c:Ldin;

.field public static final enum d:Ldin;

.field private static final synthetic e:[Ldin;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Ldin;

    const-string v1, "ENG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldin;->a:Ldin;

    new-instance v1, Ldin;

    const-string v3, "FISHFOOD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ldin;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ldin;->b:Ldin;

    new-instance v3, Ldin;

    const-string v5, "DOGFOOD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ldin;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ldin;->c:Ldin;

    new-instance v5, Ldin;

    const-string v7, "RELEASE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ldin;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ldin;->d:Ldin;

    const/4 v7, 0x4

    new-array v7, v7, [Ldin;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Ldin;->e:[Ldin;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Ldin;
    .locals 1

    sget-object v0, Ldin;->e:[Ldin;

    invoke-virtual {v0}, [Ldin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldin;

    return-object v0
.end method


# virtual methods
.method public final a(Ldin;)Z
    .locals 1

    invoke-virtual {p0}, Ldin;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Ldin;->ordinal()I

    move-result p1

    if-le v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Ldin;)Z
    .locals 1

    invoke-virtual {p0}, Ldin;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Ldin;->ordinal()I

    move-result p1

    if-gt v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
