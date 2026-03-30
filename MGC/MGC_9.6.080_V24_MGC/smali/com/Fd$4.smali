.class public final synthetic Lcom/Fd$4;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lcom/Fd;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/Fd;Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lcom/Fd$4;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iput-object p2, p0, Lcom/Fd$4;->b:Lcom/Fd;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lcom/Fd$4;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(II)V
    .locals 9

    goto/32 :goto_12

    nop

    nop

    :goto_0
    invoke-interface {v0, v7, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int/lit8 p1, p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2
    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v3, 0x0

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

    :goto_4
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string v7, "hex_editor_addr_key_"

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string v4, "hex_editor_addr_key_"

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lt p1, p2, :cond_0

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string v5, "hex_editor_val_key_"

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

    :goto_c
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    .local p1, "key":I
    .local p2, "count":I
    :goto_d
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_f
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_10
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

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

    :goto_12
    const v0, 0x4

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_13
    iget-object v0, p0, Lcom/Fd$4;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {v0, v8, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    check-cast v0, Landroid/preference/PreferenceScreen;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {v1, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    :goto_1c
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1f
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

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

    :goto_20
    invoke-interface {v1, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_21
    goto/16 :goto_9

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

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

    :goto_24
    const v1, 0x10

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_25
    const-string v8, "hex_editor_val_key_"

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_2
    if-eq v2, v3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :cond_0
    :goto_3
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_5
    iget-object v1, p0, Lcom/Fd$4;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    if-eqz v1, :cond_1

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3c

    nop

    nop

    :goto_8
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v3, p2}, Lcom/a;->aa(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_b
    const-string v0, "_"

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_c
    if-le v2, v4, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int/lit8 v1, v1, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, v3, v4}, Lcom/Fd$4;->a(II)V

    goto/32 :goto_50

    nop

    nop

    :goto_f
    iget-object v1, p0, Lcom/Fd$4;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-string v3, "aGV4X2VkaXRvcl9jb3VudF9rZXk"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_11
    check-cast v0, Lcom/F;

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

    :goto_12
    const-string v2, "            Editing cancelled!!!\nThis field must contain 8 characters."

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_14
    invoke-static {v3}, Lcom/a;->aa_mb(Ljava/lang/Object;)I

    move-result v4

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_17
    const-string v3, "val"

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v0}, Lcom/a;->ab_ma(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_19
    check-cast v3, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lcom/Fd$4;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1b
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_2f

    nop

    nop

    :goto_1d
    const-string v3, "addr"

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast p2, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const-string v2, "val"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_22
    invoke-static {v3, v2}, Lcom/a;->ab(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_23
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/16 v3, 0x8

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_25
    aget-object v3, v3, v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_26
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_58

    nop

    :goto_27
    const/4 v2, 0x0

    nop

    nop

    :goto_28
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_2a
    check-cast p1, Landroid/preference/EditTextPreference;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const-string v2, "addr"

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_2e
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/32 :goto_52

    nop

    nop

    :goto_2f
    goto/32 :goto_59

    nop

    nop

    :goto_30
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_31
    array-length v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-eqz v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    :cond_6
    goto/32 :goto_0

    nop

    nop

    :goto_33
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const v0, 0x1a

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_36
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    check-cast v1, Landroid/preference/PreferenceScreen;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_3a
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_3b
    const-string v2, "addr"

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_3c
    if-nez v2, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3d
    invoke-virtual/range {v0 .. v2}, Lcom/F;->hex_editor_category_data(Landroid/preference/PreferenceScreen;I)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/16 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getKey()Ljava/lang/String;

    move-result-object v3

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

    :goto_41
    invoke-static {v3}, Lcom/a;->aa_mb(Ljava/lang/Object;)I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_42
    return v0

    nop

    nop

    :goto_43
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-static {v3, v2}, Lcom/a;->ab(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_45
    check-cast v1, Landroid/preference/PreferenceScreen;

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_46
    invoke-static {v3, p2}, Lcom/a;->aa(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_47
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_49
    goto/16 :goto_2c

    nop

    nop

    :goto_4a
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    add-int/lit8 v4, v4, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    return v0

    nop

    nop

    :goto_4d
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    const-string v3, "aGV4X2VkaXRvcl9jb3VudF9rZXk"

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    goto :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_52
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    if-eqz v2, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_55
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_56
    if-eqz v2, :cond_9

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_4f

    nop

    nop

    :goto_57
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_1c

    nop

    nop

    nop

    .local p1, "p1":Landroid/preference/Preference;
    .local p2, "p2":Ljava/lang/Object;
    :goto_59
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    const v1, 0xc

    nop

    goto/32 :goto_1f

    nop

    nop
.end method
