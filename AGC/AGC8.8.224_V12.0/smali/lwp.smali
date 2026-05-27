.class public final Llwp;
.super Llwh;


# instance fields
.field public final a:Lapt;


# direct methods
.method public constructor <init>(Lapt;)V
    .locals 1

    invoke-direct {p0}, Llwh;-><init>()V

    iput-object p1, p0, Llwp;->a:Lapt;

    new-instance v0, Llwj;

    invoke-direct {v0, p1}, Llwj;-><init>(Lapt;)V

    new-instance v0, Llwk;

    invoke-direct {v0, p1}, Llwk;-><init>(Lapt;)V

    new-instance v0, Llwl;

    invoke-direct {v0, p1}, Llwl;-><init>(Lapt;)V

    new-instance v0, Llwm;

    invoke-direct {v0, p1}, Llwm;-><init>(Lapt;)V

    new-instance v0, Llwn;

    invoke-direct {v0, p1}, Llwn;-><init>(Lapt;)V

    new-instance v0, Llwo;

    invoke-direct {v0, p1}, Llwo;-><init>(Lapt;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Llul;Loku;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Llwp;->a:Lapt;

    new-instance v1, Llwx;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, p2, v2}, Llwx;-><init>(Llwp;Ljava/util/List;Llul;I)V

    invoke-static {v0, v1, p3}, Laeo;->i(Lapt;Lomk;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/util/List;Llul;Loku;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Llwp;->a:Lapt;

    new-instance v1, Llwi;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, p2, v2}, Llwi;-><init>(Llwp;Ljava/util/List;Llul;I)V

    invoke-static {v0, v1, p3}, Ladr;->c(Lapt;Ljava/util/concurrent/Callable;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
