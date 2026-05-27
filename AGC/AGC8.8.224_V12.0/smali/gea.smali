.class public abstract Lgea;
.super Ljava/lang/Object;

# interfaces
.implements Lgei;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Lgej;)I
    .locals 1

    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Override either getContentDescOfOption or getContentDescIdOfOption"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected d(Lgej;)I
    .locals 1

    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Override either getIconIdOfOption or getIconOfOption"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method protected f(Lgej;)I
    .locals 1

    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Override either getLabelIdOfOption or getLabelOfOption"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public h()Lgem;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public m(Lgeh;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public r(Lgej;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lgea;->b(Lgej;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public s(Lgej;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lgea;->f(Lgej;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public u(Lgec;Lgej;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public v(Lgeh;Lgej;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final x()I
    .locals 1

    invoke-virtual {p0}, Lgea;->g()Lgec;

    move-result-object v0

    invoke-virtual {v0}, Lgec;->ordinal()I

    move-result v0

    return v0
.end method

.method public y(Lgej;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0, p1}, Lgea;->d(Lgej;)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public z(Lgeh;Z)V
    .locals 0

    return-void
.end method
