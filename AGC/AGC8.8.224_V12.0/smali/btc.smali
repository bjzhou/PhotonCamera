.class final Lbtc;
.super Lbsv;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbsv;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Lbtg;
    .locals 1

    new-instance v0, Lbtb;

    invoke-direct {v0, p0}, Lbtb;-><init>(Lbtc;)V

    return-object v0
.end method

.method final d(ILjava/lang/Class;)Lbtb;
    .locals 1

    invoke-virtual {p0}, Lbsv;->b()Lbtg;

    move-result-object v0

    check-cast v0, Lbtb;

    iput p1, v0, Lbtb;->a:I

    iput-object p2, v0, Lbtb;->b:Ljava/lang/Class;

    return-object v0
.end method
