.class public final Lamy;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/media/MediaFormat;

.field public final b:I

.field public final c:Ljava/util/List;

.field public final d:Ljava/util/List;

.field public final e:Ljava/util/List;

.field public final f:Ljava/util/Deque;

.field public g:Z

.field final synthetic h:Lamz;


# direct methods
.method public constructor <init>(Lamz;Landroid/media/MediaFormat;I)V
    .locals 0

    iput-object p1, p0, Lamy;->h:Lamz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lamy;->c:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lamy;->d:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lamy;->e:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lamy;->f:Ljava/util/Deque;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lamy;->g:Z

    iput-object p2, p0, Lamy;->a:Landroid/media/MediaFormat;

    iput p3, p0, Lamy;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lamy;->a:Landroid/media/MediaFormat;

    invoke-static {v0}, Lacm;->c(Landroid/media/MediaFormat;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xbb80

    return v0

    :cond_0
    const v0, 0x15f90

    return v0
.end method

.method public final b()Lmvv;
    .locals 1

    iget-object v0, p0, Lamy;->c:Ljava/util/List;

    invoke-static {v0}, Lmvv;->j(Ljava/util/Collection;)Lmvv;

    move-result-object v0

    return-object v0
.end method
