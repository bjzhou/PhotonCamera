.class public final Lbde;
.super Lbdg;


# instance fields
.field final synthetic a:Lazd;

.field final synthetic b:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Lazd;Ljava/util/UUID;)V
    .locals 0

    iput-object p1, p0, Lbde;->a:Lazd;

    iput-object p2, p0, Lbde;->b:Ljava/util/UUID;

    invoke-direct {p0}, Lbdg;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lbde;->a:Lazd;

    iget-object v0, v0, Lazd;->d:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lapt;->m()V

    :try_start_0
    iget-object v1, p0, Lbde;->a:Lazd;

    iget-object v2, p0, Lbde;->b:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbde;->c(Lazd;Ljava/lang/String;)V

    invoke-virtual {v0}, Lapt;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lapt;->o()V

    iget-object v0, p0, Lbde;->a:Lazd;

    invoke-static {v0}, Lbde;->d(Lazd;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lapt;->o()V

    throw v1
.end method
