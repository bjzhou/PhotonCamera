.class public final Lixr;
.super Ljava/lang/Object;


# instance fields
.field public final a:[I

.field public final b:[I

.field public c:Z


# direct methods
.method public constructor <init>([I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lixr;->c:Z

    iput-object p1, p0, Lixr;->a:[I

    const/16 p1, 0xc

    new-array p1, p1, [I

    iput-object p1, p0, Lixr;->b:[I

    return-void
.end method

.method public static final a(Landroid/content/res/TypedArray;I)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result p0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
