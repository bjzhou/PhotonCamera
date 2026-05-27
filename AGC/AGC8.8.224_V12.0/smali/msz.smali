.class final Lmsz;
.super Lmuf;


# instance fields
.field final synthetic a:Lmta;


# direct methods
.method public constructor <init>(Lmta;)V
    .locals 0

    iput-object p1, p0, Lmsz;->a:Lmta;

    invoke-direct {p0}, Lmuf;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Lmzi;
    .locals 1

    iget-object v0, p0, Lmsz;->a:Lmta;

    return-object v0
.end method

.method public final e()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lmsz;->a:Lmta;

    invoke-virtual {v0}, Lmta;->o()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lmsz;->a:Lmta;

    invoke-virtual {v0}, Lmta;->n()Lmzi;

    move-result-object v0

    invoke-static {v0}, Llyh;->q(Lmyb;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
