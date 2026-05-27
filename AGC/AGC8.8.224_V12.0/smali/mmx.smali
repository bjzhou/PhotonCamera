.class public final synthetic Lmmx;
.super Ljava/lang/Object;

# interfaces
.implements Lnnn;


# instance fields
.field public final synthetic a:Lmnb;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lmnb;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmmx;->a:Lmnb;

    iput p2, p0, Lmmx;->b:I

    return-void
.end method


# virtual methods
.method public final a()Lnou;
    .locals 2

    iget-object v0, p0, Lmmx;->a:Lmnb;

    iget v1, p0, Lmmx;->b:I

    invoke-virtual {v0, v1}, Lmnb;->d(I)Lnou;

    move-result-object v0

    return-object v0
.end method
