.class public final Llzu;
.super Ljava/lang/Object;

# interfaces
.implements Llzw;


# instance fields
.field final synthetic a:Ljah;


# direct methods
.method public constructor <init>(Ljah;)V
    .locals 0

    iput-object p1, p0, Llzu;->a:Ljah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .locals 0

    invoke-static {p1}, Ljav;->c(Landroid/content/Context;)Ljav;

    move-result-object p1

    invoke-virtual {p1}, Ljav;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1

    return-object p1
.end method

.method public final b(Loku;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Llzu;->a:Ljah;

    invoke-virtual {v0}, Ljah;->a()Ljot;

    move-result-object v0

    invoke-static {v0, p1}, Lljz;->y(Ljot;Loku;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lolc;->a:Lolc;

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lojk;->a:Lojk;

    return-object p1
.end method

.method public final c(Loku;)Ljava/lang/Object;
    .locals 14

    instance-of v0, p1, Llzt;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Llzt;

    iget v1, v0, Llzt;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Llzt;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Llzt;

    invoke-direct {v0, p0, p1}, Llzt;-><init>(Llzu;Loku;)V

    :goto_0
    iget-object p1, v0, Llzt;->a:Ljava/lang/Object;

    sget-object v1, Lolc;->a:Lolc;

    iget v2, v0, Llzt;->c:I

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_1
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p1, p0, Llzu;->a:Ljah;

    iget-object v2, p1, Ljde;->i:Ljdh;

    iget-object v3, p1, Ljde;->c:Landroid/content/Context;

    iget-object v4, p1, Ljde;->e:Ljcy;

    check-cast v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-virtual {p1}, Ljah;->b()I

    move-result p1

    sget-object v5, Ljat;->a:Llpu;

    const-string v6, "silentSignIn()"

    invoke-virtual {v5, v6}, Llpu;->e(Ljava/lang/String;)V

    sget-object v5, Ljat;->a:Llpu;

    const-string v6, "getEligibleSavedSignInResult()"

    invoke-virtual {v5, v6}, Llpu;->e(Ljava/lang/String;)V

    invoke-static {v4}, Ljhp;->ab(Ljava/lang/Object;)V

    invoke-static {v3}, Ljav;->c(Landroid/content/Context;)Ljav;

    move-result-object v5

    invoke-virtual {v5}, Ljav;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_1

    move-object v8, v7

    goto/16 :goto_4

    :cond_1
    iget-object v8, v5, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->j:Landroid/accounts/Account;

    iget-object v9, v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->j:Landroid/accounts/Account;

    if-nez v8, :cond_3

    if-nez v9, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    move-object v8, v7

    goto :goto_4

    :cond_3
    invoke-virtual {v8, v9}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    move-object v8, v7

    goto :goto_4

    :cond_4
    :goto_2
    iget-boolean v8, v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->l:Z

    if-eqz v8, :cond_5

    :goto_3
    move-object v8, v7

    goto :goto_4

    :cond_5
    iget-boolean v8, v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->k:Z

    if-eqz v8, :cond_7

    iget-boolean v8, v5, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->k:Z

    if-nez v8, :cond_6

    goto :goto_3

    :cond_6
    iget-object v8, v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->n:Ljava/lang/String;

    iget-object v9, v5, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->n:Ljava/lang/String;

    invoke-static {v8, v9}, Ljhp;->af(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    move-object v8, v7

    goto :goto_4

    :cond_7
    new-instance v8, Ljava/util/HashSet;

    invoke-virtual {v5}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->a()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v8, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/HashSet;

    invoke-virtual {v4}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->a()Ljava/util/ArrayList;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v8, v5}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_8

    move-object v8, v7

    goto :goto_4

    :cond_8
    invoke-static {v3}, Ljav;->c(Landroid/content/Context;)Ljav;

    move-result-object v5

    invoke-virtual {v5}, Ljav;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    iget-wide v10, v5, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->h:J

    const-wide/16 v12, -0x12c

    add-long/2addr v10, v12

    cmp-long v12, v8, v10

    if-ltz v12, :cond_9

    goto :goto_1

    :cond_9
    new-instance v8, Ljqu;

    sget-object v9, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v8, v5, v9, v6}, Ljqu;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;I)V

    :goto_4
    if-eqz v8, :cond_a

    sget-object p1, Ljat;->a:Llpu;

    const-string v3, "Eligible saved sign in result found"

    invoke-virtual {p1, v3}, Llpu;->e(Ljava/lang/String;)V

    invoke-static {v8, v2}, Ljfc;->c(Ljdq;Ljdh;)Ljdj;

    move-result-object p1

    goto :goto_5

    :cond_a
    const/4 v5, 0x3

    if-ne p1, v5, :cond_b

    new-instance p1, Ljqu;

    new-instance v3, Lcom/google/android/gms/common/api/Status;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {p1, v7, v3, v6}, Ljqu;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;I)V

    invoke-static {p1, v2}, Ljfc;->c(Ljdq;Ljdh;)Ljdj;

    move-result-object p1

    goto :goto_5

    :cond_b
    sget-object p1, Ljat;->a:Llpu;

    const-string v5, "trySilentSignIn()"

    invoke-virtual {p1, v5}, Llpu;->e(Ljava/lang/String;)V

    new-instance p1, Ljan;

    invoke-direct {p1, v2, v3, v4}, Ljan;-><init>(Ljdh;Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    invoke-virtual {v2, p1}, Ljdh;->b(Ljec;)V

    new-instance v2, Ljdj;

    invoke-direct {v2, p1}, Ljdj;-><init>(Ljdl;)V

    move-object p1, v2

    :goto_5
    sget-object v2, Ljah;->b:Ljhe;

    invoke-static {p1, v2}, Ljhp;->ad(Ljdl;Ljhf;)Ljot;

    move-result-object p1

    iput v6, v0, Llzt;->c:I

    invoke-static {p1, v0}, Lljz;->y(Ljot;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_c

    return-object v1

    :cond_c
    :goto_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
