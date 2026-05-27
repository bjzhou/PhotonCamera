.class final Lmsu;
.super Lmyf;


# instance fields
.field final synthetic a:Lmsv;


# direct methods
.method public constructor <init>(Lmsv;)V
    .locals 0

    iput-object p1, p0, Lmsu;->a:Lmsv;

    invoke-direct {p0}, Lmyf;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lmyb;
    .locals 1

    iget-object v0, p0, Lmsu;->a:Lmsv;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lmsu;->a:Lmsv;

    invoke-virtual {v0}, Lmsv;->c()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lmsu;->a:Lmsv;

    invoke-virtual {v0}, Lmsv;->b()I

    move-result v0

    return v0
.end method
