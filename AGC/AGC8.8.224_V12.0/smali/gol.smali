.class public final synthetic Lgol;
.super Ljava/lang/Object;

# interfaces
.implements Lgon;


# instance fields
.field public final synthetic a:Lehb;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lehb;I)V
    .locals 0

    iput p2, p0, Lgol;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgol;->a:Lehb;

    return-void
.end method


# virtual methods
.method public final a(JLigo;Lnqz;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    move-object v0, p0

    iget v1, v0, Lgol;->b:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lgol;->a:Lehb;

    sget-object v2, Lgop;->a:Lnak;

    invoke-static/range {p4 .. p4}, Lnsy;->k(Lnqz;)Z

    move-result v2

    invoke-static {v2}, Lmoz;->e(Z)V

    if-eqz v1, :cond_2

    invoke-static {p3}, Lgop;->f(Ligo;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :pswitch_0
    iget-object v1, v0, Lgol;->a:Lehb;

    sget-object v2, Lgop;->a:Lnak;

    invoke-static/range {p4 .. p4}, Lnsy;->k(Lnqz;)Z

    move-result v2

    invoke-static {v2}, Lmoz;->e(Z)V

    if-eqz v1, :cond_0

    invoke-static/range {p5 .. p6}, Lgop;->a(Ljava/lang/String;Ljava/lang/String;)Lgpa;

    move-result-object v7

    iget-object v2, v1, Lehb;->d:Lehe;

    iget-object v2, v2, Lehe;->g:Ljew;

    invoke-virtual {v2}, Ljew;->x()Lhbq;

    move-result-object v10

    iget-object v3, v1, Lehb;->d:Lehe;

    iget v8, v3, Lehe;->d:I

    add-int/lit8 v1, v8, 0x1

    iput v1, v3, Lehe;->d:I

    sget-object v9, Leen;->d:Leen;

    sget-object v11, Lmpx;->a:Lmpx;

    move-wide v4, p1

    move-object v6, p3

    invoke-virtual/range {v3 .. v11}, Lehe;->h(JLigo;Lgpa;ILeen;Lhbq;Lmqp;)V

    :cond_0
    return-void

    :cond_1
    invoke-static/range {p5 .. p6}, Lgop;->a(Ljava/lang/String;Ljava/lang/String;)Lgpa;

    move-result-object v7

    iget-object v2, v1, Lehb;->d:Lehe;

    iget-object v2, v2, Lehe;->g:Ljew;

    invoke-virtual {v2}, Ljew;->x()Lhbq;

    move-result-object v10

    iget-object v3, v1, Lehb;->d:Lehe;

    iget v8, v3, Lehe;->d:I

    add-int/lit8 v1, v8, 0x1

    iput v1, v3, Lehe;->d:I

    sget-object v9, Leen;->c:Leen;

    sget-object v11, Lmpx;->a:Lmpx;

    move-wide v4, p1

    move-object v6, p3

    invoke-virtual/range {v3 .. v11}, Lehe;->h(JLigo;Lgpa;ILeen;Lhbq;Lmqp;)V

    return-void

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
