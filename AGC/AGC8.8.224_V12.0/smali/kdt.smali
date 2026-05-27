.class public final Lkdt;
.super Ljava/lang/Object;


# static fields
.field public static final a:[I


# instance fields
.field public final b:I

.field public c:I

.field private final d:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lkdt;->a:[I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lkdt;->d:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Lkdt;->c:I

    iput p1, p0, Lkdt;->b:I

    return-void
.end method

.method private static f(S)I
    .locals 0

    int-to-char p0, p0

    return p0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    iget-object v0, p0, Lkdt;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public final b(S)Lkdq;
    .locals 1

    iget-object v0, p0, Lkdt;->d:Landroid/util/SparseArray;

    invoke-static {p1}, Lkdt;->f(S)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkdq;

    return-object p1
.end method

.method protected final c(S)V
    .locals 1

    iget-object v0, p0, Lkdt;->d:Landroid/util/SparseArray;

    invoke-static {p1}, Lkdt;->f(S)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method protected final d()[Lkdq;
    .locals 4

    iget-object v0, p0, Lkdt;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v1, v0, [Lkdq;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lkdt;->d:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkdq;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final e(Lkdq;)V
    .locals 2

    iget v0, p0, Lkdt;->b:I

    iput v0, p1, Lkdq;->e:I

    iget-short v0, p1, Lkdq;->a:S

    invoke-static {v0}, Lkdt;->f(S)I

    move-result v0

    iget-object v1, p0, Lkdt;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkdq;

    iget-object v1, p0, Lkdt;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lkdt;

    if-eqz v2, :cond_5

    check-cast p1, Lkdt;

    iget v2, p1, Lkdt;->b:I

    iget v3, p0, Lkdt;->b:I

    if-ne v2, v3, :cond_5

    invoke-virtual {p1}, Lkdt;->a()I

    move-result v2

    invoke-virtual {p0}, Lkdt;->a()I

    move-result v3

    if-ne v2, v3, :cond_5

    invoke-virtual {p1}, Lkdt;->d()[Lkdq;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, p1, v3

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    iget-short v5, v4, Lkdq;->a:S

    invoke-static {v5}, Lcom/google/android/libraries/camera/exif/ExifInterface;->t(S)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lkdt;->d:Landroid/util/SparseArray;

    iget-short v6, v4, Lkdq;->a:S

    invoke-static {v6}, Lkdt;->f(S)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkdq;

    invoke-virtual {v4, v5}, Lkdq;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    return v1

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lkdt;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lkdt;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    iget-object v2, p0, Lkdt;->d:Landroid/util/SparseArray;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
