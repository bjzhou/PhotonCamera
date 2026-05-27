.class public abstract Lluc;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lltv;->h:Lltv;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static C()Llua;
    .locals 2

    new-instance v0, Llua;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llua;-><init>([B)V

    sget v1, Lmvv;->d:I

    sget-object v1, Lmyu;->a:Lmvv;

    invoke-virtual {v0, v1}, Llua;->e(Lmvv;)V

    const/4 v1, 0x1

    iput-byte v1, v0, Llua;->i:B

    sget-object v1, Llub;->d:Llub;

    invoke-virtual {v0, v1}, Llua;->g(Llub;)V

    return-object v0
.end method


# virtual methods
.method public A()Lmqp;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public abstract B()V
.end method

.method public abstract a()Lltv;
.end method

.method public abstract b()Llub;
.end method

.method public abstract c()Llud;
.end method

.method public abstract d()Lmqp;
.end method

.method public abstract e()Lmqp;
.end method

.method public abstract f()Lmqp;
.end method

.method public abstract g()Lmqp;
.end method

.method public abstract h()Lmqp;
.end method

.method public abstract i()Lmqp;
.end method

.method public abstract j()Lmqp;
.end method

.method public abstract k()Lmqp;
.end method

.method public abstract l()Lmqp;
.end method

.method public abstract m()Lmqp;
.end method

.method public abstract n()Lmqp;
.end method

.method public abstract o()Lmqp;
.end method

.method public abstract p()Lmqp;
.end method

.method public abstract q()Lmqp;
.end method

.method public abstract r()Lmqp;
.end method

.method public abstract s()Lmqp;
.end method

.method public abstract t()Lmqp;
.end method

.method public abstract u()Lmqp;
.end method

.method public abstract v()Lmqp;
.end method

.method public abstract w()Lmqp;
.end method

.method public abstract x()Lmqp;
.end method

.method public abstract y()Lmvv;
.end method

.method public abstract z()Ljava/lang/Float;
.end method
