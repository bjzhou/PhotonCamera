.class public abstract Lbql;
.super Ljava/lang/Object;

# interfaces
.implements Lbqo;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/content/res/AssetManager;

.field private c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbql;->b:Landroid/content/res/AssetManager;

    iput-object p2, p0, Lbql;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected abstract b(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public final bg()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lbql;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lbql;->e(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    :cond_0
    return-void
.end method

.method protected abstract e(Ljava/lang/Object;)V
.end method

.method public final f(Lbos;Lbqn;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lbql;->b:Landroid/content/res/AssetManager;

    iget-object v0, p0, Lbql;->a:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lbql;->b(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lbql;->c:Ljava/lang/Object;

    invoke-interface {p2, p1}, Lbqn;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

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
