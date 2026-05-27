.class Lgvq;
.super Lgvl;


# instance fields
.field final synthetic b:Lgvs;


# direct methods
.method public constructor <init>(Lgvs;)V
    .locals 0

    iput-object p1, p0, Lgvq;->b:Lgvs;

    invoke-direct {p0}, Lgvl;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lgvq;->b:Lgvs;

    iget-object v0, v0, Lgvs;->b:Logd;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgvv;

    invoke-interface {v0}, Lgvv;->d()V

    return-void
.end method
