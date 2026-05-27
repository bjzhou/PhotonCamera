.class final Lbda;
.super Lapo;


# direct methods
.method public constructor <init>(Lapt;)V
    .locals 0

    invoke-direct {p0, p1}, Lapo;-><init>(Lapt;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Larf;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Ldne;

    iget-object v0, p2, Ldne;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lare;->g(ILjava/lang/String;)V

    iget-object p2, p2, Ldne;->a:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Lare;->g(ILjava/lang/String;)V

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR IGNORE INTO `WorkTag` (`tag`,`work_spec_id`) VALUES (?,?)"

    return-object v0
.end method
