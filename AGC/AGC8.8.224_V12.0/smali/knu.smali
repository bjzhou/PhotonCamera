.class public final Lknu;
.super Lknw;


# instance fields
.field public a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lknw;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lknu;->a:J

    return-void
.end method


# virtual methods
.method public final a()Lknw;
    .locals 3

    new-instance v0, Lknu;

    invoke-direct {v0}, Lknu;-><init>()V

    iget-wide v1, p0, Lknu;->a:J

    iput-wide v1, v0, Lknu;->a:J

    return-object v0
.end method
