.class public final synthetic Lcom/FbA$2;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iput-object p6, p0, Lcom/FbA$2;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lcom/FbA$2;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    iput-object p4, p0, Lcom/FbA$2;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Lcom/FbA$2;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p3, p0, Lcom/FbA$2;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p5, p0, Lcom/FbA$2;->e:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    iput-object p7, p0, Lcom/FbA$2;->g:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    goto/32 :goto_1d

    nop

    nop

    :goto_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v1, v2}, Lcom/FbA$2;->removeAll(Landroid/preference/PreferenceGroup;Landroid/content/SharedPreferences$Editor;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    iget-object v2, v0, Lcom/F;->iActivity:Landroid/app/Activity;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    iget-object v1, p0, Lcom/FbA$2;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return v0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_21

    nop

    nop

    :goto_8
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, v1, v2}, Lcom/FbA$2;->removeAll(Landroid/preference/PreferenceGroup;Landroid/content/SharedPreferences$Editor;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v1, Landroid/preference/PreferenceGroup;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    check-cast v1, Landroid/preference/PreferenceScreen;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v1, p0, Lcom/FbA$2;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_d
    check-cast v1, Landroid/preference/PreferenceGroup;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast v1, Landroid/preference/PreferenceGroup;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lcom/FbA$2;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_12
    check-cast v2, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_13
    iget-object v2, p0, Lcom/FbA$2;->g:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v1, p0, Lcom/FbA$2;->e:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_15
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0, v1, v2}, Lcom/FbA$2;->removeAll(Landroid/preference/PreferenceGroup;Landroid/content/SharedPreferences$Editor;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_17
    check-cast v0, Lcom/F;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_19
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v1, p0, Lcom/FbA$2;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1b
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_1c
    check-cast v1, Landroid/preference/PreferenceGroup;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v0, 0x1a

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0, v1, v2}, Lcom/F;->nm_pthcr_key(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1f
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0, v1, v2}, Lcom/FbA$2;->removeAll(Landroid/preference/PreferenceGroup;Landroid/content/SharedPreferences$Editor;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_22
    iget-object v1, p0, Lcom/FbA$2;->f:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method public removeAll(Landroid/preference/PreferenceGroup;Landroid/content/SharedPreferences$Editor;)V
    .locals 4

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

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
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    :goto_4
    if-eqz v2, :cond_1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x1c

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

    :goto_6
    instance-of v2, v0, Landroid/preference/PreferenceCategory;

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

    :goto_7
    invoke-virtual {p0, v0, p2}, Lcom/FbA$2;->removeAll(Landroid/preference/PreferenceGroup;Landroid/content/SharedPreferences$Editor;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x1c

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {p2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    check-cast v0, Landroid/preference/PreferenceGroup;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-eqz v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_15
    if-lt v1, v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto :goto_10

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_19
    goto/32 :goto_1b

    nop

    :goto_1a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    instance-of v2, v0, Landroid/preference/PreferenceScreen;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method
