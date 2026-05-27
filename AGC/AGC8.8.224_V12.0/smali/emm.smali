.class public final synthetic Lemm;
.super Ljava/lang/Object;

# interfaces
.implements Lmrl;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Landroid/app/Activity;

.field public final synthetic e:Ljew;


# direct methods
.method public synthetic constructor <init>(ZZZLjew;Landroid/app/Activity;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lemm;->a:Z

    iput-boolean p2, p0, Lemm;->b:Z

    iput-boolean p3, p0, Lemm;->c:Z

    iput-object p4, p0, Lemm;->e:Ljew;

    iput-object p5, p0, Lemm;->d:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 7

    iget-boolean v0, p0, Lemm;->a:Z

    iget-boolean v1, p0, Lemm;->b:Z

    iget-boolean v2, p0, Lemm;->c:Z

    iget-object v3, p0, Lemm;->e:Ljew;

    iget-object v4, p0, Lemm;->d:Landroid/app/Activity;

    invoke-static {}, Lmwa;->i()Lmvw;

    move-result-object v5

    sget-object v6, Lika;->g:Lika;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lika;->m:Lika;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lika;->n:Lika;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lika;->j:Lika;

    invoke-virtual {v4}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljew;->G(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lika;->s:Lika;

    invoke-virtual {v4}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ljew;->I(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5}, Lmvw;->b()Lmwa;

    move-result-object v0

    return-object v0
.end method
