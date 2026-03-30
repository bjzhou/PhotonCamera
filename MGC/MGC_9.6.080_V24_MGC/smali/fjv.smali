.class public abstract Lfjv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfjy;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/content/res/AssetManager;

.field private c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput-object p1, p0, Lfjv;->b:Landroid/content/res/AssetManager;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lfjv;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method protected abstract b(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public final cG()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lfjv;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    :try_start_0
    invoke-virtual {p0, v0}, Lfjv;->e(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method protected abstract e(Ljava/lang/Object;)V
.end method

.method public final f(Lfie;Lfjx;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lfjv;->b:Landroid/content/res/AssetManager;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lfjv;->a:Ljava/lang/String;

    nop

    invoke-virtual {p0, p1, v0}, Lfjv;->b(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    iput-object p1, p0, Lfjv;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p2, p1}, Lfjx;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    return-void

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p2, p0}, Lfjx;->e(Ljava/lang/Exception;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final g()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method
