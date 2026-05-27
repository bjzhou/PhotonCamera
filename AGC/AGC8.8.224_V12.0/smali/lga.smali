.class final Llga;
.super Lmrq;


# instance fields
.field final synthetic a:Lkrn;


# direct methods
.method public constructor <init>(Lkrn;)V
    .locals 0

    iput-object p1, p0, Llga;->a:Lkrn;

    invoke-direct {p0}, Lmrq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-object v0, p0, Llga;->a:Lkrn;

    invoke-interface {v0}, Lkrn;->c()J

    move-result-wide v0

    return-wide v0
.end method
