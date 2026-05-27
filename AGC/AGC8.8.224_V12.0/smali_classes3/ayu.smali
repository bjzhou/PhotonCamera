.class public final Layu;
.super Lej;


# static fields
.field private static final g:Ljava/lang/String;


# instance fields
.field public final a:Lazd;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;

.field public final d:Ljava/util/List;

.field public e:Z

.field public final f:I

.field private final h:Ljava/util/List;

.field private i:Laxu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkContinuationImpl"

    invoke-static {v0}, Laxq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Layu;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lazd;Ljava/lang/String;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Lej;-><init>()V

    iput-object p1, p0, Layu;->a:Lazd;

    iput-object p2, p0, Layu;->b:Ljava/lang/String;

    iput p3, p0, Layu;->f:I

    iput-object p4, p0, Layu;->c:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Layu;->d:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Layu;->h:Ljava/util/List;

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lva;

    invoke-virtual {p2}, Lva;->d()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Layu;->d:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Layu;->h:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static i()Ljava/util/Set;
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final h()Laxu;
    .locals 4

    iget-boolean v0, p0, Layu;->e:Z

    if-nez v0, :cond_0

    new-instance v0, Lbdh;

    invoke-direct {v0, p0}, Lbdh;-><init>(Layu;)V

    iget-object v1, p0, Layu;->a:Lazd;

    iget-object v1, v1, Lazd;->k:Lva;

    invoke-static {v1, v0}, Lbdl;->b(Lva;Ljava/lang/Runnable;)V

    iget-object v0, v0, Lbdh;->a:Layn;

    iput-object v0, p0, Layu;->i:Laxu;

    goto :goto_0

    :cond_0
    invoke-static {}, Laxq;->a()Laxq;

    sget-object v0, Layu;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already enqueued work ids ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Layu;->d:Ljava/util/List;

    const-string v3, ", "

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Layu;->i:Laxu;

    return-object v0
.end method
