.class public final Lncg;
.super Ljava/util/AbstractSet;


# instance fields
.field public final synthetic a:Lnci;


# direct methods
.method public constructor <init>(Lnci;)V
    .locals 0

    iput-object p1, p0, Lncg;->a:Lnci;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Llfm;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Llfm;-><init>(Lncg;I)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lncg;->a:Lnci;

    iget v0, v0, Lnci;->b:I

    return v0
.end method
