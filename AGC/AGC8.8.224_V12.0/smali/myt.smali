.class public final Lmyt;
.super Lmvk;


# static fields
.field static final a:Lmyt;


# instance fields
.field final transient b:[Ljava/lang/Object;

.field public final transient c:Lmyt;

.field private final transient d:Ljava/lang/Object;

.field private final transient e:I

.field private final transient f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmyt;

    invoke-direct {v0}, Lmyt;-><init>()V

    sput-object v0, Lmyt;->a:Lmyt;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lmvk;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmyt;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lmyt;->b:[Ljava/lang/Object;

    iput v0, p0, Lmyt;->e:I

    iput v0, p0, Lmyt;->f:I

    iput-object p0, p0, Lmyt;->c:Lmyt;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;ILmyt;)V
    .locals 0

    invoke-direct {p0}, Lmvk;-><init>()V

    iput-object p1, p0, Lmyt;->d:Ljava/lang/Object;

    iput-object p2, p0, Lmyt;->b:[Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p0, Lmyt;->e:I

    iput p3, p0, Lmyt;->f:I

    iput-object p4, p0, Lmyt;->c:Lmyt;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 2

    invoke-direct {p0}, Lmvk;-><init>()V

    iput-object p1, p0, Lmyt;->b:[Ljava/lang/Object;

    iput p2, p0, Lmyt;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lmyt;->e:I

    const/4 v1, 0x2

    if-lt p2, v1, :cond_0

    invoke-static {p2}, Lmwn;->B(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {p1, p2, v1, v0}, Lmyz;->k([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lmyt;->d:Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-static {p1, p2, v1, v0}, Lmyz;->k([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lmyt;

    invoke-direct {v1, v0, p1, p2, p0}, Lmyt;-><init>(Ljava/lang/Object;[Ljava/lang/Object;ILmyt;)V

    iput-object v1, p0, Lmyt;->c:Lmyt;

    return-void
.end method


# virtual methods
.method public final a()Lmvk;
    .locals 1

    iget-object v0, p0, Lmyt;->c:Lmyt;

    return-object v0
.end method

.method public final cB()Lmwn;
    .locals 4

    new-instance v0, Lmyw;

    iget-object v1, p0, Lmyt;->b:[Ljava/lang/Object;

    iget v2, p0, Lmyt;->e:I

    iget v3, p0, Lmyt;->f:I

    invoke-direct {v0, p0, v1, v2, v3}, Lmyw;-><init>(Lmwa;[Ljava/lang/Object;II)V

    return-object v0
.end method

.method public final cC()Lmwn;
    .locals 4

    new-instance v0, Lmyy;

    iget-object v1, p0, Lmyt;->b:[Ljava/lang/Object;

    iget v2, p0, Lmyt;->e:I

    iget v3, p0, Lmyt;->f:I

    invoke-direct {v0, v1, v2, v3}, Lmyy;-><init>([Ljava/lang/Object;II)V

    new-instance v1, Lmyx;

    invoke-direct {v1, p0, v0}, Lmyx;-><init>(Lmwa;Lmvv;)V

    return-object v1
.end method

.method public final cE()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lmyt;->d:Ljava/lang/Object;

    iget-object v1, p0, Lmyt;->b:[Ljava/lang/Object;

    iget v2, p0, Lmyt;->f:I

    iget v3, p0, Lmyt;->e:I

    invoke-static {v0, v1, v2, v3, p1}, Lmyz;->t(Ljava/lang/Object;[Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lmyt;->f:I

    return v0
.end method
