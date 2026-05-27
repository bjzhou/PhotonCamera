.class Ldou;
.super Ldos;


# instance fields
.field final synthetic a:Ldox;


# direct methods
.method public constructor <init>(Ldox;)V
    .locals 0

    iput-object p1, p0, Ldou;->a:Ldox;

    invoke-direct {p0}, Ldos;-><init>()V

    return-void
.end method


# virtual methods
.method public b(IIF)V
    .locals 1

    iget-object v0, p0, Ldou;->a:Ldox;

    iget-object v0, v0, Ldox;->d:Ldpc;

    iput p1, v0, Ldpc;->f:I

    sub-int/2addr p2, p1

    iput p2, v0, Ldpc;->g:I

    iput p3, v0, Ldpc;->h:F

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Ldou;->a:Ldox;

    iget-object v0, v0, Ldox;->a:Lcom/google/android/apps/camera/evcomp/EvCompView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/evcomp/EvCompView;->setVisibility(I)V

    iget-object v0, p0, Ldou;->a:Ldox;

    iget-object v0, v0, Ldox;->d:Ldpc;

    invoke-virtual {v0}, Ldpc;->l()V

    return-void
.end method

.method public final g()V
    .locals 0

    return-void
.end method
