.class public final Lebb;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lgyq;

.field final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Z

.field final synthetic e:Z

.field public final synthetic f:Z

.field public final synthetic g:Lgcc;

.field final synthetic h:Z

.field final synthetic i:Z

.field public final synthetic j:Z

.field public final synthetic k:Z

.field public final synthetic l:Z

.field public final synthetic m:Z


# direct methods
.method public constructor <init>(Lgyq;ZZZZZLgcc;ZZZZZZ)V
    .locals 0

    iput-object p1, p0, Lebb;->a:Lgyq;

    iput-boolean p2, p0, Lebb;->b:Z

    iput-boolean p3, p0, Lebb;->c:Z

    iput-boolean p4, p0, Lebb;->d:Z

    iput-boolean p5, p0, Lebb;->e:Z

    iput-boolean p6, p0, Lebb;->f:Z

    iput-object p7, p0, Lebb;->g:Lgcc;

    iput-boolean p8, p0, Lebb;->h:Z

    iput-boolean p9, p0, Lebb;->i:Z

    iput-boolean p10, p0, Lebb;->j:Z

    iput-boolean p11, p0, Lebb;->k:Z

    iput-boolean p12, p0, Lebb;->l:Z

    iput-boolean p13, p0, Lebb;->m:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lgyq;
    .locals 1

    iget-boolean v0, p0, Lebb;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lebb;->a:Lgyq;

    goto :goto_0

    :cond_0
    sget-object v0, Lgyq;->a:Lgyq;

    :goto_0
    return-object v0
.end method
