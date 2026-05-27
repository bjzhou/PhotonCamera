.class public final Lbqz;
.super Ljava/lang/Object;

# interfaces
.implements Lbqq;


# instance fields
.field public final a:Lbxa;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lbsu;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbxa;

    invoke-direct {v0, p1, p2}, Lbxa;-><init>(Ljava/io/InputStream;Lbsu;)V

    iput-object v0, p0, Lbqz;->a:Lbxa;

    const/high16 p1, 0x500000

    invoke-virtual {v0, p1}, Lbxa;->mark(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lbqz;->c()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lbqz;->a:Lbxa;

    invoke-virtual {v0}, Lbxa;->b()V

    return-void
.end method

.method public final c()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lbqz;->a:Lbxa;

    invoke-virtual {v0}, Lbxa;->reset()V

    iget-object v0, p0, Lbqz;->a:Lbxa;

    return-object v0
.end method
