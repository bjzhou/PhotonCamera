.class public final synthetic Lffi;
.super Ljava/lang/Object;

# interfaces
.implements Lnno;


# instance fields
.field public final synthetic a:Lffl;

.field public final synthetic b:Lhkt;

.field public final synthetic c:Ljava/io/InputStream;

.field public final synthetic d:Lgxn;

.field public final synthetic e:Lmqp;

.field public final synthetic f:J

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Lhjc;


# direct methods
.method public synthetic constructor <init>(Lffl;Lhkt;Ljava/io/InputStream;Lgxn;Lmqp;JLjava/lang/String;Lhjc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lffi;->a:Lffl;

    iput-object p2, p0, Lffi;->b:Lhkt;

    iput-object p3, p0, Lffi;->c:Ljava/io/InputStream;

    iput-object p4, p0, Lffi;->d:Lgxn;

    iput-object p5, p0, Lffi;->e:Lmqp;

    iput-wide p6, p0, Lffi;->f:J

    iput-object p8, p0, Lffi;->g:Ljava/lang/String;

    iput-object p9, p0, Lffi;->h:Lhjc;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lnou;
    .locals 10

    iget-object v0, p0, Lffi;->a:Lffl;

    iget-object v2, p0, Lffi;->b:Lhkt;

    iget-object v3, p0, Lffi;->c:Ljava/io/InputStream;

    iget-object v4, p0, Lffi;->d:Lgxn;

    iget-object v5, p0, Lffi;->e:Lmqp;

    iget-wide v6, p0, Lffi;->f:J

    iget-object v8, p0, Lffi;->g:Ljava/lang/String;

    iget-object v9, p0, Lffi;->h:Lhjc;

    check-cast p1, Ljava/lang/RuntimeException;

    iget-object v1, v0, Lffl;->b:Lfgd;

    invoke-interface/range {v1 .. v9}, Lfgd;->b(Lhkt;Ljava/io/InputStream;Lgxn;Lmqp;JLjava/lang/String;Lhjc;)Lnou;

    move-result-object p1

    return-object p1
.end method
