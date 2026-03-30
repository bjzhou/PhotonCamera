.class public final synthetic Lcom/FbA$1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p5, p0, Lcom/FbA$1;->f:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lcom/FbA$1;->b:Ljava/lang/Object;

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

    :goto_2
    iput-object p1, p0, Lcom/FbA$1;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p6, p0, Lcom/FbA$1;->g:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Lcom/FbA$1;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p4, p0, Lcom/FbA$1;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/FbA$1;->removeAll(Landroid/preference/PreferenceGroup;Landroid/content/SharedPreferences$Editor;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v1, Landroid/preference/PreferenceScreen;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v1, p0, Lcom/FbA$1;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lcom/FbA$1;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v2, p0, Lcom/FbA$1;->g:Ljava/lang/Object;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_8
    goto/32 :goto_17

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v2, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    check-cast v1, Landroid/preference/PreferenceGroup;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_c
    check-cast v1, Landroid/preference/PreferenceGroup;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    const v1, 0x1f

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

    nop

    :goto_e
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/32 :goto_7

    nop

    nop

    :goto_f
    invoke-virtual {p0, v1, v2}, Lcom/FbA$1;->removeAll(Landroid/preference/PreferenceGroup;Landroid/content/SharedPreferences$Editor;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, v1, v2}, Lcom/FbA$1;->removeAll(Landroid/preference/PreferenceGroup;Landroid/content/SharedPreferences$Editor;)V

    goto/32 :goto_11

    nop

    nop

    :goto_11
    iget-object v1, p0, Lcom/FbA$1;->f:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_12
    iget-object v1, p0, Lcom/FbA$1;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v2, v0, Lcom/F;->iActivity:Landroid/app/Activity;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_15
    check-cast v0, Lcom/F;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_16
    return v0

    nop

    nop

    :goto_17
    goto/32 :goto_18

    nop

    nop

    :goto_18
    goto/32 :goto_9

    nop

    :goto_19
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1a
    const v0, 0x14

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_1c
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1d
    invoke-virtual {v0, v1, v2}, Lcom/F;->gawb_all_key(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1e
    iget-object v1, p0, Lcom/FbA$1;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    check-cast v1, Landroid/preference/PreferenceGroup;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public removeAll(Landroid/preference/PreferenceGroup;Landroid/content/SharedPreferences$Editor;)V
    .locals 4

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x18

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    invoke-interface {p2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto :goto_8

    nop

    :goto_4
    goto/32 :goto_f

    nop

    nop

    :goto_5
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_a
    instance-of v2, v0, Landroid/preference/PreferenceCategory;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    if-eqz v2, :cond_0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    :goto_10
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_13
    goto :goto_8

    nop

    :goto_14
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_1
    goto/32 :goto_11

    nop

    :goto_16
    if-eqz v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_18
    instance-of v2, v0, Landroid/preference/PreferenceScreen;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_19
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-lt v1, v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_3
    goto/32 :goto_d

    nop

    nop

    :goto_1b
    check-cast v0, Landroid/preference/PreferenceGroup;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1c
    invoke-virtual {p0, v0, p2}, Lcom/FbA$1;->removeAll(Landroid/preference/PreferenceGroup;Landroid/content/SharedPreferences$Editor;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop
.end method
