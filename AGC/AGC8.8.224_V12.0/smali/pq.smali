.class final Lpq;
.super Ljava/lang/Object;

# interfaces
.implements Lph;


# instance fields
.field final synthetic a:Lpr;

.field private final b:Lpn;


# direct methods
.method public constructor <init>(Lpr;Lpn;)V
    .locals 0

    iput-object p1, p0, Lpq;->a:Lpr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lpq;->b:Lpn;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Lpq;->a:Lpr;

    iget-object v0, v0, Lpr;->a:Lojv;

    iget-object v1, p0, Lpq;->b:Lpn;

    invoke-virtual {v0, v1}, Lojv;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lpq;->b:Lpn;

    invoke-virtual {v0, p0}, Lpn;->c(Lph;)V

    iget-object v0, p0, Lpq;->b:Lpn;

    const/4 v1, 0x0

    iput-object v1, v0, Lpn;->d:Lolz;

    iget-object v0, p0, Lpq;->a:Lpr;

    invoke-virtual {v0}, Lpr;->d()V

    return-void
.end method
