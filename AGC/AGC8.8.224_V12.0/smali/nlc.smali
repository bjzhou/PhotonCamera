.class public final enum Lnlc;
.super Ljava/lang/Enum;

# interfaces
.implements Lnwv;


# static fields
.field public static final enum a:Lnlc;

.field public static final enum b:Lnlc;

.field public static final enum c:Lnlc;

.field public static final enum d:Lnlc;

.field public static final enum e:Lnlc;

.field public static final enum f:Lnlc;

.field public static final enum g:Lnlc;

.field private static final synthetic i:[Lnlc;


# instance fields
.field public final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lnlc;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lnlc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnlc;->a:Lnlc;

    new-instance v1, Lnlc;

    const-string v3, "SLOWEST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lnlc;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnlc;->b:Lnlc;

    new-instance v3, Lnlc;

    const-string v5, "SLOW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lnlc;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lnlc;->c:Lnlc;

    new-instance v5, Lnlc;

    const-string v7, "LITTLE_FAST"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lnlc;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lnlc;->d:Lnlc;

    new-instance v7, Lnlc;

    const-string v9, "FAST"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lnlc;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lnlc;->e:Lnlc;

    new-instance v9, Lnlc;

    const-string v11, "FASTEST"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lnlc;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lnlc;->f:Lnlc;

    new-instance v11, Lnlc;

    const-string v13, "AUTO"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lnlc;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lnlc;->g:Lnlc;

    const/4 v13, 0x7

    new-array v13, v13, [Lnlc;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lnlc;->i:[Lnlc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lnlc;->h:I

    return-void
.end method

.method public static values()[Lnlc;
    .locals 1

    sget-object v0, Lnlc;->i:[Lnlc;

    invoke-virtual {v0}, [Lnlc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnlc;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lnlc;->h:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lnlc;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
