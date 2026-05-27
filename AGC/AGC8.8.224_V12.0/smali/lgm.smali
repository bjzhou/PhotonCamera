.class public final synthetic Llgm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Llgn;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I

.field public final synthetic e:Ljoj;


# direct methods
.method public synthetic constructor <init>(Llgn;Ljava/lang/String;Ljava/lang/String;ILjoj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llgm;->a:Llgn;

    iput-object p2, p0, Llgm;->b:Ljava/lang/String;

    iput-object p3, p0, Llgm;->c:Ljava/lang/String;

    iput p4, p0, Llgm;->d:I

    iput-object p5, p0, Llgm;->e:Ljoj;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Llgm;->a:Llgn;

    iget-object v1, p0, Llgm;->b:Ljava/lang/String;

    iget-object v2, p0, Llgm;->c:Ljava/lang/String;

    iget v3, p0, Llgm;->d:I

    iget-object v4, p0, Llgm;->e:Ljoj;

    invoke-virtual {v0, v1, v2, v3, v4}, Llgn;->f(Ljava/lang/String;Ljava/lang/String;ILjoj;)Ljot;

    move-result-object v0

    return-object v0
.end method
