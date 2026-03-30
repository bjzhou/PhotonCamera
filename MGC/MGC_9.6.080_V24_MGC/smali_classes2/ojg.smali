.class public final Lojg;
.super Loqf;
.source "PG"

# interfaces
.implements Lohf;
.implements Lohg;


# static fields
.field private static final h:Lolx;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/util/Set;

.field public final d:Lokb;

.field public e:Loqi;

.field public f:Loin;

.field public final g:Lolx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lojg;->h:Lolx;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v0, Loqc;->a:Lolx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lokb;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lojg;->b:Landroid/os/Handler;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lojg;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p3, p0, Lojg;->d:Lokb;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Loqf;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_4
    sget-object v0, Lojg;->h:Lolx;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    iput-object v0, p0, Lojg;->g:Lolx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lojg;->c:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p1, p3, Lokb;->b:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Loil;->l(Lofz;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {p1, v0}, Lofz;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    :goto_3
    check-cast p0, Loil;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-boolean v0, p0, Loil;->g:Z

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, p1}, Loil;->a(I)V

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Loin;->b:Lohw;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/16 v0, 0x11

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, v0, Loio;->k:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Loin;->e:Loio;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lojg;->f:Loin;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_11
    new-instance p1, Lofz;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 26

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_21

    nop

    nop

    :goto_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0xd

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_5
    const-string v5, "email"

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz v11, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    new-instance v11, Landroid/accounts/Account;

    nop

    nop

    const-string v13, "com.google"

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v11, v12, v13}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    iget-object v13, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    nop

    nop

    if-eqz v12, :cond_d

    nop

    nop

    nop

    nop

    nop

    iget-object v12, v8, Lojy;->b:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    sget-object v13, Loes;->a:Ljava/util/concurrent/locks/Lock;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v13}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    sget-object v13, Loes;->b:Loes;

    nop

    if-nez v13, :cond_1

    nop

    nop

    nop

    nop

    nop

    new-instance v13, Loes;

    nop

    nop

    nop

    invoke-virtual {v12}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v13, v12}, Loes;-><init>(Landroid/content/Context;)V

    sput-object v13, Loes;->b:Loes;

    nop

    nop

    nop

    :cond_1
    sget-object v12, Loes;->b:Loes;

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v13, Loes;->a:Ljava/util/concurrent/locks/Lock;

    nop

    nop

    nop

    nop

    invoke-interface {v13}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string v13, "defaultGoogleSignInAccount"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v12, v13}, Loes;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    nop

    nop

    nop

    nop

    nop

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    nop

    nop

    nop

    if-eqz v14, :cond_2

    nop

    nop

    nop

    goto/16 :goto_17

    nop

    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v14, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    nop

    invoke-virtual {v12, v7}, Loes;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    nop

    nop
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v7, :cond_3

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_3
    :try_start_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    nop

    if-eqz v12, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_17

    nop

    nop

    nop

    :cond_4
    new-instance v12, Lorg/json/JSONObject;

    nop

    nop

    nop

    invoke-direct {v12, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    nop

    nop

    sget-object v7, Lcom/google/android/apps/camera/filmstrip/transition/KkW/xCXUu;->yNOKHtKqGwpgQE:Ljava/lang/String;

    nop

    nop

    nop

    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    nop

    if-nez v13, :cond_5

    nop

    nop

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    nop

    nop

    move-object/from16 v18, v7

    nop

    goto :goto_a

    nop

    nop

    :cond_5
    const/16 v18, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string v7, "expirationTime"

    nop

    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    nop

    nop

    nop

    nop

    new-instance v7, Ljava/util/HashSet;

    nop

    nop

    nop

    nop

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    const-string v13, "grantedScopes"

    nop

    nop

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v14

    nop

    nop

    nop

    nop

    const/4 v15, 0x0

    nop

    nop

    nop

    :goto_b
    if-ge v15, v14, :cond_6

    nop

    nop

    new-instance v10, Lcom/google/android/gms/common/api/Scope;

    nop

    nop

    nop

    nop

    invoke-virtual {v13, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    nop

    nop

    nop

    nop

    invoke-direct {v10, v9}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    nop

    nop

    goto :goto_b

    nop

    :cond_6
    const-string v9, "id"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v12, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    nop

    nop

    nop

    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    nop

    if-eqz v9, :cond_7

    nop

    nop

    nop

    nop

    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    move-object v15, v6

    nop

    nop

    nop

    goto :goto_c

    nop

    nop

    :cond_7
    const/4 v15, 0x0

    nop

    nop

    :goto_c
    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_8

    nop

    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    move-object/from16 v16, v5

    nop

    goto :goto_d

    nop

    nop

    :cond_8
    const/16 v16, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    nop

    if-eqz v5, :cond_9

    nop

    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    move-object/from16 v17, v4

    nop

    goto :goto_e

    nop

    :cond_9
    const/16 v17, 0x0

    nop

    :goto_e
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    nop

    if-eqz v4, :cond_a

    nop

    nop

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v24, v3

    nop

    nop

    nop

    nop

    nop

    goto :goto_f

    nop

    nop

    nop

    :cond_a
    const/16 v24, 0x0

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_b

    nop

    nop

    nop

    nop

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v25, v2

    nop

    goto :goto_10

    nop

    nop

    nop

    nop

    :cond_b
    const/16 v25, 0x0

    nop

    :goto_10
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    nop

    const-string v3, "obfuscatedIdentifier"

    nop

    nop

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    nop

    nop

    new-instance v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v22 .. v22}, Lolx;->ae(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    nop

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/16 v19, 0x0

    nop

    nop

    move-object v13, v3

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v23, v2

    nop

    invoke-direct/range {v13 .. v25}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    nop

    if-eqz v2, :cond_c

    nop

    nop

    nop

    nop

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto :goto_11

    nop

    nop

    nop

    nop

    :cond_c
    const/4 v0, 0x0

    nop

    :goto_11
    iput-object v0, v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->f:Ljava/lang/String;

    nop
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string v3, "SignInClientImpl"

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_13
    const-string v2, "Remote service probably died when signIn is called"

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_14
    const-string v2, "familyName"

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto :goto_18

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_4
    sget-object v2, Loes;->a:Ljava/util/concurrent/locks/Lock;

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    nop

    nop

    nop

    nop

    nop

    :catch_1
    :cond_d
    :goto_17
    const/4 v3, 0x0

    nop

    nop

    nop

    :goto_18
    new-instance v0, Lold;

    nop

    nop

    iget-object v2, v8, Loqi;->u:Ljava/lang/Integer;

    nop

    nop

    nop

    invoke-static {v2}, Lolx;->ag(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    nop

    nop

    const/4 v4, 0x2

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, v4, v11, v2, v3}, Lold;-><init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    invoke-virtual {v8}, Lojy;->t()Landroid/os/IInterface;

    move-result-object v2

    nop

    nop

    check-cast v2, Loqg;

    nop

    nop

    nop

    new-instance v3, Loqj;

    nop

    nop

    nop

    nop

    const/4 v4, 0x1

    nop

    nop

    invoke-direct {v3, v4, v0}, Loqj;-><init>(ILold;)V

    invoke-virtual {v2}, Lfum;->a()Landroid/os/Parcel;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-static {v0, v3}, Lfuo;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, v1}, Lfuo;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 v3, 0xc

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v3, v0}, Lfum;->A(ILandroid/os/Parcel;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1a
    const-string v12, "<<default account>>"

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const-string v1, "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException."

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const-string v0, "serverAuthCode"

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1d
    const/4 v7, 0x0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const-string v4, "displayName"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1f
    const-string v3, "givenName"

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_20
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_5
    new-instance v2, Loqk;

    nop

    nop

    nop

    nop

    new-instance v4, Lofz;

    nop

    nop

    const/16 v5, 0x8

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    invoke-direct {v4, v5, v6}, Lofz;-><init>(ILandroid/app/PendingIntent;)V

    const/4 v5, 0x1

    nop

    invoke-direct {v2, v5, v4, v6}, Loqk;-><init>(ILofz;Lole;)V

    invoke-virtual {v1, v2}, Loqf;->c(Loqk;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto/32 :goto_4

    nop

    nop

    :goto_21
    move-object/from16 v1, p0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_e

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_0

    nop

    :goto_23
    const-string v6, "tokenId"

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_24
    return-void

    nop

    :goto_25
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_26
    sget-object v7, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/uK/JLjgPsjc;->vVQqpmOnNFBPYa:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_27
    return-void

    nop

    nop

    nop

    nop

    nop

    :catch_2
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v8, v1, Lojg;->e:Loqi;

    nop

    nop

    nop

    nop

    nop

    :try_start_6
    iget-object v11, v8, Loqi;->t:Lokb;

    nop

    nop

    nop

    nop

    nop

    iget-object v11, v11, Lokb;->a:Landroid/accounts/Account;

    nop

    nop

    nop
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {v3, v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Loqk;)V
    .locals 3

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_1
    new-instance v0, Locn;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, p0, p1, v1, v2}, Locn;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[C)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    const/16 v1, 0x9

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    iget-object p0, p0, Lojg;->b:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method public final i(Lofz;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Lojg;->f:Loin;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Loin;->b(Lofz;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method
