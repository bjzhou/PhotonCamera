.class public final Limv;
.super Ljava/lang/Object;

# interfaces
.implements Limu;


# instance fields
.field volatile a:I

.field final synthetic b:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Limv;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Limv;->a:I

    return-void
.end method


# virtual methods
.method public final a(Lmzi;)Z
    .locals 1

    invoke-interface {p1}, Lmzi;->size()I

    move-result p1

    iget v0, p0, Limv;->a:I

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
