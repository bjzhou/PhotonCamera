.class public final enum Lnih;
.super Ljava/lang/Enum;

# interfaces
.implements Lnwv;


# static fields
.field public static final enum a:Lnih;

.field public static final enum b:Lnih;

.field public static final enum c:Lnih;

.field private static final synthetic e:[Lnih;


# instance fields
.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lnih;

    const-string v1, "UNKNOWN_STATUS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lnih;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnih;->a:Lnih;

    new-instance v1, Lnih;

    const-string v3, "NOT_HEEDED"

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-direct {v1, v3, v4, v5}, Lnih;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnih;->b:Lnih;

    new-instance v3, Lnih;

    const-string v6, "HEEDED"

    invoke-direct {v3, v6, v5, v4}, Lnih;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lnih;->c:Lnih;

    const/4 v6, 0x3

    new-array v6, v6, [Lnih;

    aput-object v0, v6, v2

    aput-object v1, v6, v4

    aput-object v3, v6, v5

    sput-object v6, Lnih;->e:[Lnih;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lnih;->d:I

    return-void
.end method

.method public static values()[Lnih;
    .locals 1

    sget-object v0, Lnih;->e:[Lnih;

    invoke-virtual {v0}, [Lnih;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnih;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lnih;->d:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lnih;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
