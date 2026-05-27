.class final Lws;
.super Ljava/util/AbstractSet;


# instance fields
.field final synthetic a:Lwy;


# direct methods
.method public constructor <init>(Lwy;)V
    .locals 0

    iput-object p1, p0, Lws;->a:Lwy;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lwv;

    iget-object v1, p0, Lws;->a:Lwy;

    invoke-direct {v0, v1}, Lwv;-><init>(Lwy;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lws;->a:Lwy;

    iget v0, v0, Lxf;->d:I

    return v0
.end method
