.class public final Lfcw;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfcw;->a:Loiw;

    iput-object p2, p0, Lfcw;->b:Loiw;

    iput-object p3, p0, Lfcw;->c:Loiw;

    iput-object p4, p0, Lfcw;->d:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lfcv;
    .locals 6

    iget-object v0, p0, Lfcw;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lfcw;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljuh;

    iget-object v2, p0, Lfcw;->c:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnou;

    iget-object v3, p0, Lfcw;->d:Loiw;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhrq;

    new-instance v4, Lfcv;

    invoke-direct {v4, v0, v1, v2, v3}, Lfcv;-><init>(Landroid/content/Context;Ljuh;Lnou;Lhrq;)V

    iget-object v0, v4, Lfcv;->b:Ljava/util/List;

    iget-object v1, v4, Lfcv;->h:Landroid/content/Context;

    const v2, 0x7f140130

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xfa0

    const/16 v3, 0xa

    invoke-virtual {v4, v1, v2, v3}, Licd;->h(Ljava/lang/String;II)Licf;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v4, Lfcv;->b:Ljava/util/List;

    iget-object v1, v4, Lfcv;->h:Landroid/content/Context;

    const v5, 0x7f140131

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, v2, v3}, Licd;->h(Ljava/lang/String;II)Licf;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v4, Lfcv;->h:Landroid/content/Context;

    const v1, 0x7f140132

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v2, v3}, Licd;->h(Ljava/lang/String;II)Licf;

    move-result-object v0

    iput-object v0, v4, Lfcv;->d:Licf;

    iget-object v0, v4, Lfcv;->h:Landroid/content/Context;

    const v1, 0x7f140136

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const/16 v2, 0x8

    invoke-virtual {v4, v0, v1, v2}, Licd;->h(Ljava/lang/String;II)Licf;

    iget-object v0, v4, Lfcv;->h:Landroid/content/Context;

    const v5, 0x7f140133

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v1, v3}, Licd;->h(Ljava/lang/String;II)Licf;

    move-result-object v0

    iput-object v0, v4, Lfcv;->e:Licf;

    iget-object v0, v4, Lfcv;->h:Landroid/content/Context;

    const v3, 0x7f14012f

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v1, v2}, Licd;->h(Ljava/lang/String;II)Licf;

    move-result-object v0

    iput-object v0, v4, Lfcv;->c:Licf;

    iget-object v0, v4, Lfcv;->h:Landroid/content/Context;

    const v3, 0x7f140137

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v1, v2}, Licd;->h(Ljava/lang/String;II)Licf;

    move-result-object v0

    iput-object v0, v4, Lfcv;->f:Licf;

    return-object v4
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lfcw;->a()Lfcv;

    move-result-object v0

    return-object v0
.end method
