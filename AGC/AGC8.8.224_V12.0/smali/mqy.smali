.class final Lmqy;
.super Lmpy;


# instance fields
.field final synthetic f:Lmra;


# direct methods
.method public constructor <init>(Lmra;Lmrd;Ljava/lang/CharSequence;[B)V
    .locals 0

    iput-object p1, p0, Lmqy;->f:Lmra;

    invoke-direct {p0, p2, p3}, Lmpy;-><init>(Lmrd;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final b(I)I
    .locals 5

    iget-object v0, p0, Lmqy;->f:Lmra;

    iget-object v0, v0, Lmra;->a:Ljava/lang/Object;

    iget-object v1, p0, Lmqy;->b:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {p1, v2}, Lmoz;->x(II)V

    :goto_0
    if-ge p1, v2, :cond_1

    invoke-interface {v1, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    move-object v4, v0

    check-cast v4, Lmqf;

    invoke-virtual {v4, v3}, Lmqf;->b(C)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_1
    return p1
.end method
