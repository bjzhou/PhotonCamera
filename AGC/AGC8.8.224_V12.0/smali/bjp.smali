.class final Lbjp;
.super Ljava/lang/Object;

# interfaces
.implements Lbhn;


# instance fields
.field final synthetic a:Lbjq;


# direct methods
.method public constructor <init>(Lbjq;)V
    .locals 0

    iput-object p1, p0, Lbjp;->a:Lbjq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3

    iget-object v0, p0, Lbjp;->a:Lbjq;

    iget-object v1, v0, Lbjq;->d:Lbhu;

    invoke-virtual {v1}, Lbhu;->k()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lbjq;->m(Z)V

    return-void
.end method
