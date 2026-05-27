.class final Lfo;
.super Lagb;


# instance fields
.field final synthetic a:Lfq;


# direct methods
.method public constructor <init>(Lfq;)V
    .locals 0

    iput-object p1, p0, Lfo;->a:Lfq;

    invoke-direct {p0}, Lagb;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lfo;->a:Lfq;

    const/4 v1, 0x0

    iput-object v1, v0, Lfq;->m:Lgf;

    iget-object v0, v0, Lfq;->c:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContainer;->requestLayout()V

    return-void
.end method
