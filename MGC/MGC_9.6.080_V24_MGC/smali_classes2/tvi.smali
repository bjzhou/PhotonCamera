.class public final Ltvi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltvh;


# static fields
.field public static final a:Lqvy;

.field public static final b:Lqvy;

.field public static final c:Lqvy;

.field public static final d:Lqvy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    goto/32 :goto_11

    nop

    nop

    :goto_0
    new-instance v1, Lqvs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1
    const-string v3, "SocialShare__use_phenotype_allowlist"

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2
    const-string v1, "SocialShare__enable_social_share"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lqvw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_4
    sput-object v1, Ltvi;->b:Lqvy;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string v5, "com.whatsapp,com.facebook.orca,com.zhiliaoapp.musically,com.ss.android.ugc.trill,com.instagram.android,com.facebook.katana,com.facebook.lite,com.snapchat.android,com.facebook.mlite,org.telegram.messenger,app.buzz.share,com.twitter.android,com.imo.android.imoim,com.google.android.youtube,in.mohalla.sharechat,com.discord,com.viber.voip,com.google.android.apps.tachyon,com.skype.raider,jp.naver.line.android,com.google.android.apps.dynamite,com.google.android.talk,com.google.android.apps.messaging,com.vsco.cam,com.tencent.mm,com.Slack,com.kakao.talk,org.thoughtcrime.securesms,kik.android,com.groupme.android,com.google.android.apps.googlevoice,com.verizon.messaging.vzmsgs,com.textra"

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v1, Lqvs;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_7
    const v1, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v1, v0, v3, v4, v2}, Lqvs;-><init>(Lqvw;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/32 :goto_13

    nop

    nop

    :goto_a
    goto/32 :goto_1f

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Lqvw;->a()Lqvw;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v1, v0, v3, v4, v2}, Lqvs;-><init>(Lqvw;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_e
    sput-object v1, Ltvi;->a:Lqvy;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_f
    new-instance v1, Lqvs;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Lqvw;->c()Lqvw;

    move-result-object v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x4

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0, v1}, Lqvw;-><init>(Landroid/net/Uri;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sput-object v1, Ltvi;->d:Lqvy;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v1}, Lqvj;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_15
    invoke-direct {v1, v0, v3, v4, v2}, Lqvs;-><init>(Lqvw;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_16
    const-string v3, "SocialShare__use_phenotype_app_ranking"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_19
    sput-object v1, Ltvi;->c:Lqvy;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0, v1, v2}, Lqvw;->f(Ljava/lang/String;Z)Lqvy;

    goto/32 :goto_6

    nop

    nop

    :goto_1b
    const-string v3, "SocialShare__use_geolocation_app_ranking"

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance v1, Lqvs;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0}, Lqvw;->b()Lqvw;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1e
    return-void

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_20
    const-string v3, "SocialShare__use_phenotype_video_allowlist"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_21
    const-string v4, ""

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_22
    const-string v1, "com.google.android.apps.camera"

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_23
    invoke-direct {v1, v0, v3, v5, v2}, Lqvs;-><init>(Lqvw;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/32 :goto_19

    nop

    nop

    :goto_24
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_25
    add-int v0, v0, v1

    nop

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

    nop
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Ljava/lang/String;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lqvy;->b()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object p0, Ltvi;->a:Lqvy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lqvy;->b()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    :goto_2
    sget-object p0, Ltvi;->b:Lqvy;

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

    :goto_3
    check-cast p0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lqvy;->b()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    sget-object p0, Ltvi;->c:Lqvy;

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

    :goto_3
    check-cast p0, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lqvy;->b()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object p0, Ltvi;->d:Lqvy;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p0, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop
.end method
