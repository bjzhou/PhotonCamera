.class final Lbtj;
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

    new-instance v0, Lbti;

    invoke-direct {v0, p0}, Lbti;-><init>(Lbtj;)V

    return-object v0
.end method

.method public final d(ILandroid/graphics/Bitmap$Config;)Lbti;
    .locals 1

    invoke-virtual {p0}, Lbsv;->b()Lbtg;

    move-result-object v0

    check-cast v0, Lbti;

    iput p1, v0, Lbti;->a:I

    iput-object p2, v0, Lbti;->b:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method
