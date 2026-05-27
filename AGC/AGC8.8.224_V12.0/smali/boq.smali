.class public final Lboq;
.super Landroid/content/ContextWrapper;


# static fields
.field static final a:Lbpe;


# instance fields
.field public final b:Lbsu;

.field public final c:Ljava/util/List;

.field public final d:Ljava/util/Map;

.field public final e:I

.field public final f:Lbkc;

.field public final g:Lbze;

.field public final h:Llij;

.field private final i:Lcaq;

.field private j:Lbzp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbok;

    invoke-direct {v0}, Lbok;-><init>()V

    sput-object v0, Lboq;->a:Lbpe;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lbsu;Lcaq;Lbze;Ljava/util/Map;Ljava/util/List;Llij;Lbkc;[B[B[B[B[B)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lboq;->b:Lbsu;

    iput-object p4, p0, Lboq;->g:Lbze;

    iput-object p6, p0, Lboq;->c:Ljava/util/List;

    iput-object p5, p0, Lboq;->d:Ljava/util/Map;

    iput-object p7, p0, Lboq;->h:Llij;

    iput-object p8, p0, Lboq;->f:Lbkc;

    const/4 p1, 0x4

    iput p1, p0, Lboq;->e:I

    invoke-static {p3}, Lbze;->e(Lcaq;)Lcaq;

    move-result-object p1

    iput-object p1, p0, Lboq;->i:Lcaq;

    return-void
.end method


# virtual methods
.method public final a()Lboy;
    .locals 1

    iget-object v0, p0, Lboq;->i:Lcaq;

    invoke-interface {v0}, Lcaq;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lboy;

    return-object v0
.end method

.method public final declared-synchronized b()Lbzp;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lboq;->j:Lbzp;

    if-nez v0, :cond_0

    new-instance v0, Lbzp;

    invoke-direct {v0}, Lbzp;-><init>()V

    invoke-virtual {v0}, Lbzg;->N()V

    iput-object v0, p0, Lboq;->j:Lbzp;

    :cond_0
    iget-object v0, p0, Lboq;->j:Lbzp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
