.class final Lbui;
.super Ljava/lang/Object;

# interfaces
.implements Lbqo;


# instance fields
.field private final a:Landroid/content/res/Resources$Theme;

.field private final b:Landroid/content/res/Resources;

.field private final c:Lbuj;

.field private final d:I

.field private e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;Lbuj;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbui;->a:Landroid/content/res/Resources$Theme;

    iput-object p2, p0, Lbui;->b:Landroid/content/res/Resources;

    iput-object p3, p0, Lbui;->c:Lbuj;

    iput p4, p0, Lbui;->d:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lbui;->c:Lbuj;

    invoke-interface {v0}, Lbuj;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final bg()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lbui;->e:Ljava/lang/Object;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lbui;->c:Lbuj;

    invoke-interface {v1, v0}, Lbuj;->d(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    :cond_0
    return-void
.end method

.method public final f(Lbos;Lbqn;)V
    .locals 3

    :try_start_0
    iget-object p1, p0, Lbui;->c:Lbuj;

    iget-object v0, p0, Lbui;->a:Landroid/content/res/Resources$Theme;

    iget-object v1, p0, Lbui;->b:Landroid/content/res/Resources;

    iget v2, p0, Lbui;->d:I

    invoke-interface {p1, v0, v1, v2}, Lbuj;->c(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lbui;->e:Ljava/lang/Object;

    invoke-interface {p2, p1}, Lbqn;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-interface {p2, p1}, Lbqn;->e(Ljava/lang/Exception;)V

    return-void
.end method

.method public final g()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
